defmodule SCSynthDef.Maker do
  # second idea

  defp name(struct) do
    apply(struct.__struct__, :name, [struct])
  end

  defp rate(struct) do
    apply(struct.__struct__, :rate, [struct])
  end

  defp number_of_outputs(struct) do
    apply(struct.__struct__, :number_of_outputs, [struct])
  end

  defp outputs(struct) do
    apply(struct.__struct__, :outputs, [struct])
  end

  defp args(struct) do
    apply(struct.__struct__, :args, [struct])
  end

  defp special_index(struct) do
    apply(struct.__struct__, :special_index, [struct])
  end

  def add_ugen(def, ugens = [_head | _tail]) do
    Enum.reduce(ugens, def, fn ugen, def ->
      add_ugen(def, ugen)
    end)
  end

  def add_ugen(def, ugen) do
    {def, _n} = add_ugengraph_to_def(def, ugen)

    validate_out_parameters!(def)

    def
  end

  defp add_ugengraph_to_def_control(def, ugen = %{key: key, value: val, spec: spec}) do
    id = Enum.find_index(def.parameter_names, fn x -> x.name == key end)

    if !is_nil(def.metadata[key]) && def.metadata[key] != spec do
      raise "could not add Control because a control of the same name had been added with a different spec"
    end

    def = put_in(def.metadata[key], spec)

    {def, id} =
      if(is_nil(id)) do
        id = Kernel.length(def.parameters)
        def = add_parameter_to_def(def, val)

        def =
          add_parameter_name_to_def(def, %SCSynthDef.Struct.SCSDParameterName{id: id, name: key})

        {def, id}
      else
        {def, id}
      end

    add_ugen_to_def(def, %SCSynthDef.Struct.SCSDUGen{
      name: name(ugen),
      rate: rate(ugen),
      number_of_inputs: 0,
      number_of_outputs: number_of_outputs(ugen),
      special_index: id,
      outputs: outputs(ugen),
      inputs: []
    })
  end

  defp add_atom_ugen_input_to_def(def, ugen, inputs, key, val) do
    case name(ugen) do
      "BinaryOpUGen" ->
        {def, inputs}

      "UnaryOpUGen" ->
        {def, inputs}

      _ ->
        IO.puts(
          "atom inputs are dropped for now as they are only used for BOp and UOp: #{name(ugen)} #{
            key
          }: #{inspect(val)} maybe you want to use UGen.shapeID"
        )
    end
  end

  defp add_number_ugen_input_to_def(def, _ugen, inputs, _key, val) do
    {def, index} = add_constant_to_def(def, val)

    {def,
     inputs ++
       [
         %SCSynthDef.Struct.SCSDInput{
           index_of_ugen: -1,
           index_of_output: index
         }
       ]}
  end

  defp add_map_ugen_input_to_def(def, _ugen, inputs, _key, val) do
    # IO.puts(
    #   "ugen input: #{key}: name #{inspect(name(val))}   number of outputs #{
    #     inspect(number_of_outputs(val))
    #   }"
    # )

    {def, index} = add_ugengraph_to_def(def, val)

    if(number_of_outputs(val) < 1) do
      raise "ugen is used as input but doesn't has output: #{inspect(val)} in def: #{def}"
    end

    {def,
     inputs ++
       Enum.map(0..(number_of_outputs(val) - 1), fn x ->
         %SCSynthDef.Struct.SCSDInput{
           index_of_ugen: index,
           index_of_output: x
         }
       end)}
  end

  defp add_list_ugen_input_to_def(def, ugen, inputs, key, val) do
    # IO.puts("list input: #{key}: #{inspect(val)}")

    Enum.reduce(val, {def, inputs}, fn val, {def, inputs} ->
      if(is_number(val)) do
        {def, inputs} = add_number_ugen_input_to_def(def, ugen, inputs, key, val)
        # IO.inspect({key, inputs})
        {def, inputs}
      else
        {def, index} = add_ugengraph_to_def(def, val)

        if(number_of_outputs(val) < 1) do
          raise "ugen is used as input but doesn't has output: #{inspect(val)} in def: #{def}"
        end

        {def,
         inputs ++
           Enum.map(0..(number_of_outputs(val) - 1), fn x ->
             %SCSynthDef.Struct.SCSDInput{
               index_of_ugen: index,
               index_of_output: x
             }
           end)}
      end
    end)
  end

  defp add_ugen_input_to_def(def, ugen, inputs, key, val) do
    cond do
      is_atom(val) ->
        add_atom_ugen_input_to_def(def, ugen, inputs, key, val)

      is_number(val) ->
        add_number_ugen_input_to_def(def, ugen, inputs, key, val)

      is_map(val) ->
        add_map_ugen_input_to_def(def, ugen, inputs, key, val)

      is_list(val) ->
        # IO.inspect(val)
        add_list_ugen_input_to_def(def, ugen, inputs, key, val)

      true ->
        IO.puts("other input not implemented: #{key}: #{inspect(val)}")
        {def, inputs}
    end
  end

  defp add_ugengraph_to_def(def, ugen = %Control.Kr{}) do
    add_ugengraph_to_def_control(def, ugen)
  end

  defp add_ugengraph_to_def(def, ugen = %Control.Ar{}) do
    add_ugengraph_to_def_control(def, ugen)
  end

  defp add_ugengraph_to_def(def, ugen = %Control.Ir{}) do
    add_ugengraph_to_def_control(def, ugen)
  end

  defp add_ugengraph_to_def(def, ugen = %Control.Tr{}) do
    add_ugengraph_to_def_control(def, ugen)
  end

  defp add_ugengraph_to_def(def, ugen) do
    {def, inputs} =
      Enum.reduce(args(ugen), {def, []}, fn key, {def, inputs} ->
        val = Map.get(ugen, key)

        val =
          if(is_binary(val)) do
            val = to_charlist(val)
            val = [length(val) | val]
            val
          else
            val
          end

        add_ugen_input_to_def(def, ugen, inputs, key, val)
      end)

    add_ugen_to_def(def, %SCSynthDef.Struct.SCSDUGen{
      name: name(ugen),
      rate: rate(ugen),
      number_of_inputs: Kernel.length(inputs),
      number_of_outputs: number_of_outputs(ugen),
      special_index: special_index(ugen),
      outputs: outputs(ugen),
      inputs: inputs
    })
  end

  defp add_constant_to_constants_set(constants, val) do
    if Enum.member?(constants, val) do
      {constants, Enum.find_index(constants, fn x -> x == val end)}
    else
      nc = constants ++ [val]
      i = Kernel.length(nc) - 1
      {nc, i}
    end
  end

  defp add_constant_to_def(def, val) do
    val = val / 1

    {nc, index} = add_constant_to_constants_set(def.constants, val)
    {%{def | constants: nc, number_of_constants: Kernel.length(nc)}, index}
  end

  # def add_parameter_to_parameters_set(parameters, val) do
  #   if Enum.member?(parameters, val) do
  #     {parameters, Enum.find_index(parameters, fn x -> x == val end)}
  #   else
  #     nc = parameters ++ [val]
  #     i = Kernel.length(nc) - 1
  #     {nc, i}
  #   end
  # end

  defp add_parameter_to_def(def, val) do
    val = val / 1

    nc = def.parameters ++ [val]
    # index = Kernel.length(nc) - 1
    # {nc, index} = add_parameter_to_parameters_set(def.parameters, val)
    # {%{def | parameters: nc, number_of_parameters: Kernel.length(nc)}, index}
    %{def | parameters: nc, number_of_parameters: Kernel.length(nc)}
  end

  defp add_parameter_name_to_parameter_names_set(parameter_names, key) do
    if Enum.member?(parameter_names, key) do
      {parameter_names, Enum.find_index(parameter_names, fn x -> x == key end)}
    else
      nc = parameter_names ++ [key]
      i = Kernel.length(nc) - 1
      {nc, i}
    end
  end

  defp add_parameter_name_to_def(def, key) do
    {nc, _index} = add_parameter_name_to_parameter_names_set(def.parameter_names, key)
    %{def | parameter_names: nc, number_of_parameter_names: Kernel.length(nc)}
  end

  defp add_ugen_to_ugens_set(ugens, ugen) do
    if Enum.member?(ugens, ugen) do
      {ugens, Enum.find_index(ugens, fn x -> x == ugen end)}
    else
      nug = ugens ++ [ugen]
      i = Kernel.length(nug) - 1
      {nug, i}
    end
  end

  defp add_ugen_to_def(def, ugen) do
    {nug, index} = add_ugen_to_ugens_set(def.ugens, ugen)
    {%{def | ugens: nug, number_of_ugens: Kernel.length(nug)}, index}
  end

  # def test_too() do
  #   def = %SCSynthDef.Struct{name: "test"}
  #   sig = %SinOsc.Ar{freq: 440}
  #
  #   out = %ReplaceOut.Ar{
  #     bus: 0,
  #     channelsArray: [sig, %BOp{selector: :*, a: sig, b: 0.5}]
  #   }
  #
  #   SCSynthDef.Maker.add_ugen(def, out)
  # end

  def get_out_ugens(def) do
    {def,
     Enum.filter(def.ugens, fn x ->
       Enum.member?(["Out", "ReplaceOut", "OffsetOut", "XOut"], x.name)
     end)}
  end

  defp find_first_parameter_input_spec({def, ugen}) do
    input = Enum.at(ugen.inputs, 0)

    if(input.index_of_ugen == -1) do
      %SCSynthDef.Info.InputSpec{
        name: :_out,
        init_value: Enum.at(def.constants, input.index_of_output),
        rate: 0,
        id: -1,
        rate_name: :ir
      }
    else
      ugen = Enum.at(def.ugens, input.index_of_ugen)

      case ugen.name do
        "Control" -> SCSynthDef.Info.InputSpec.make_input_spec(def, ugen)
        "AudioControl" -> SCSynthDef.Info.InputSpec.make_input_spec(def, ugen)
        "TrigControl" -> SCSynthDef.Info.InputSpec.make_input_spec(def, ugen)
        _ -> find_first_parameter_input_spec({def, ugen})
      end
    end
  end

  def find_out_bus_input_specs({def, ugens}) do
    Enum.map(ugens, fn ugen ->
      n_channels =
        case ugen.name do
          "Out" -> length(ugen.inputs) - 1
          "ReplaceOut" -> length(ugen.inputs) - 1
          "OffsetOut" -> length(ugen.inputs) - 1
          "XOut" -> length(ugen.inputs) - 2
          _ -> raise "find_out_bus_input_specs appied on not out ugen: #{inspect(ugen)}"
        end

      ininfo = find_first_parameter_input_spec({def, ugen})
      ininfomap = ininfo |> Map.from_struct()
      outinfo = struct(SCSynthDef.Info.OutputSpec, ininfomap)
      %{outinfo | n_channels: n_channels}
    end)
  end

  defp validate_out_parameters!(def) do
    input_specs = get_out_ugens(def) |> find_out_bus_input_specs()

    Enum.map(input_specs, fn input_spec ->
      if !String.starts_with?(Atom.to_string(input_spec.name), "_out") do
        raise "out ugens should always use constants or parameter names that start with '_out'."
      end

      if input_spec.rate == 2 do
        raise "out ugens should never have a audio rate input"
      end

      true
    end)
  end
end
