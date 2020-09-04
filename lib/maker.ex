defmodule SCSynthDef.Maker do
  # second idea

  def name(struct) do
    apply(struct.__struct__, :name, [struct])
  end

  def rate(struct) do
    apply(struct.__struct__, :rate, [struct])
  end

  def number_of_outputs(struct) do
    apply(struct.__struct__, :number_of_outputs, [struct])
  end

  def outputs(struct) do
    apply(struct.__struct__, :outputs, [struct])
  end

  def args(struct) do
    apply(struct.__struct__, :args, [struct])
  end

  def special_index(struct) do
    apply(struct.__struct__, :special_index, [struct])
  end

  def add_ugen(def, ugens = [_head | _tail]) do
    Enum.reduce(ugens, def, fn ugen, def ->
      add_ugen(def, ugen)
    end)
  end

  def add_ugen(def, ugen) do
    {def, _n} = add_ugengraph_to_def(def, ugen)
    def
  end

  def add_ugengraph_to_def(def, ugen = %Control.Kr{key: key, value: val}) do
    id = Enum.find_index(def.parameter_names, fn x -> x.name == key end)

    {def, id} =
      if(is_nil(id)) do
        id = Kernel.length(def.parameters)
        def = add_parameter_to_def(def, val)
        def = add_parameter_name_to_def(def, %SCSynthDef.SCSDParameterName{id: id, name: key})
        {def, id}
      else
        {def, id}
      end

    add_ugen_to_def(def, %SCSynthDef.SCSDUGen{
      name: name(ugen),
      rate: rate(ugen),
      number_of_inputs: 0,
      number_of_outputs: number_of_outputs(ugen),
      special_index: id,
      outputs: outputs(ugen),
      inputs: []
    })
  end

  def add_ugengraph_to_def(def, ugen) do
    {def, inputs} =
      Enum.reduce(args(ugen), {def, []}, fn key, {def, inputs} ->
        val = Map.get(ugen, key)

        cond do
          is_atom(val) ->
            case name(ugen) do
              "BinaryOpUGen" ->
                {def, inputs}

              "UnaryOpUGen" ->
                {def, inputs}

              _ ->
                IO.puts(
                  "atom inputs are dropped for now as they are only used for BOp and UOp: #{key}: #{
                    inspect(val)
                  }"
                )
            end

          is_number(val) ->
            # IO.puts("constant input: #{key}: #{inspect(val)}")
            {def, index} = add_constant_to_def(def, val)

            {def,
             inputs ++
               [
                 %SCSynthDef.SCSDInput{
                   index_of_ugen: -1,
                   index_of_output: index
                 }
               ]}

          is_map(val) ->
            # IO.puts("ugen input: #{key}: #{inspect(val)}")
            {def, index} = add_ugengraph_to_def(def, val)

            {def,
             inputs ++
               [
                 %SCSynthDef.SCSDInput{
                   index_of_ugen: index,
                   index_of_output: 0
                 }
               ]}

          is_list(val) ->
            # IO.puts("list input: #{key}: #{inspect(val)}")

            Enum.reduce(val, {def, inputs}, fn val, {def, inputs} ->
              {def, index} = add_ugengraph_to_def(def, val)

              {def,
               inputs ++
                 [
                   %SCSynthDef.SCSDInput{
                     index_of_ugen: index,
                     index_of_output: 0
                   }
                 ]}
            end)

          true ->
            IO.puts("other input not implemented: #{key}: #{inspect(val)}")
            {def, inputs}
        end
      end)

    add_ugen_to_def(def, %SCSynthDef.SCSDUGen{
      name: name(ugen),
      rate: rate(ugen),
      number_of_inputs: Kernel.length(inputs),
      number_of_outputs: number_of_outputs(ugen),
      special_index: special_index(ugen),
      outputs: outputs(ugen),
      inputs: inputs
    })
  end

  def add_constant_to_constants_set(constants, val) do
    if Enum.member?(constants, val) do
      {constants, Enum.find_index(constants, fn x -> x == val end)}
    else
      nc = constants ++ [val]
      i = Kernel.length(nc) - 1
      {nc, i}
    end
  end

  def add_constant_to_def(def, val) do
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

  def add_parameter_to_def(def, val) do
    val = val / 1
    nc = def.parameters ++ [val]
    # index = Kernel.length(nc) - 1
    # {nc, index} = add_parameter_to_parameters_set(def.parameters, val)
    # {%{def | parameters: nc, number_of_parameters: Kernel.length(nc)}, index}
    %{def | parameters: nc, number_of_parameters: Kernel.length(nc)}
  end

  def add_parameter_name_to_parameter_names_set(parameter_names, key) do
    if Enum.member?(parameter_names, key) do
      {parameter_names, Enum.find_index(parameter_names, fn x -> x == key end)}
    else
      nc = parameter_names ++ [key]
      i = Kernel.length(nc) - 1
      {nc, i}
    end
  end

  def add_parameter_name_to_def(def, key) do
    {nc, _index} = add_parameter_name_to_parameter_names_set(def.parameter_names, key)
    %{def | parameter_names: nc, number_of_parameter_names: Kernel.length(nc)}
  end

  def add_ugen_to_ugens_set(ugens, ugen) do
    if Enum.member?(ugens, ugen) do
      {ugens, Enum.find_index(ugens, fn x -> x == ugen end)}
    else
      nug = ugens ++ [ugen]
      i = Kernel.length(nug) - 1
      {nug, i}
    end
  end

  def add_ugen_to_def(def, ugen) do
    {nug, index} = add_ugen_to_ugens_set(def.ugens, ugen)
    {%{def | ugens: nug, number_of_ugens: Kernel.length(nug)}, index}
  end

  # def test_too() do
  #   def = %SCSynthDef{name: "test"}
  #   sig = %SinOsc.Ar{freq: 440}
  #
  #   out = %ReplaceOut.Ar{
  #     bus: 0,
  #     channelsArray: [sig, %BOp{selector: :*, a: sig, b: 0.5}]
  #   }
  #
  #   SCSynthDef.Maker.add_ugen(def, out)
  # end
end
