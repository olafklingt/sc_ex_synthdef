defmodule SCSynthDef.Reader do
  @magic_string "SCgf"
  @version 2
  @number_of_defs_in_file 1

  def parse_string([bins, struct], pos) do
    <<stringlength::8-unsigned-big, bins::binary>> = bins
    <<name::binary-size(stringlength), bins::binary>> = bins
    [bins, Map.put(struct, pos, name)]
  end

  def parse_string_as_atom([bins, struct], pos) do
    <<stringlength::8-unsigned-big, bins::binary>> = bins
    <<name::binary-size(stringlength), bins::binary>> = bins
    [bins, Map.put(struct, pos, String.to_atom(name))]
  end

  def parse_int32([bins, struct], pos) do
    <<number::32-signed-big, bins::binary>> = bins
    [bins, Map.put(struct, pos, number)]
  end

  def parse_int16([bins, struct], pos) do
    <<number::16-signed-big, bins::binary>> = bins
    [bins, Map.put(struct, pos, number)]
  end

  def parse_float_array([bins, struct], size_ref, pos) do
    bnc = Map.get(struct, size_ref) * 4
    <<bc::binary-size(bnc), bins::binary>> = bins

    array =
      for <<x::32-float <- bc>> do
        x
      end

    [bins, Map.put(struct, pos, array)]
  end

  def parse_parameter_name(bins) do
    [bins, %SCSynthDef.SCSDParameterName{}]
    |> parse_string_as_atom(:name)
    |> parse_int32(:id)
  end

  def parse_parameter_names([bins, struct = %{number_of_parameter_names: 0}]) do
    [bins, struct]
  end

  def parse_parameter_names([bins, struct = %{number_of_parameter_names: np}]) do
    [bins, parameter_names] =
      SCSynthDef.Helper.do_n_times(
        np,
        [bins, []],
        fn [bins, pn] ->
          [bins, npn] = parse_parameter_name(bins)
          [bins, pn ++ [npn]]
        end
      )

    [bins, Map.put(struct, :parameter_names, parameter_names)]
  end

  # ugen_input
  def parse_input([bins, _ugen_struct]) do
    [bins, %SCSynthDef.SCSDInput{}]
    |> parse_int32(:index_of_ugen)
    |> parse_int32(:index_of_output)
  end

  def parse_inputs([bins, ugen_struct = %{number_of_inputs: 0}]) do
    [bins, ugen_struct]
  end

  def parse_inputs([bins, ugen_struct = %{number_of_inputs: ni}]) do
    [bins, inputs] =
      SCSynthDef.Helper.do_n_times(
        ni,
        [bins, ugen_struct.inputs],
        fn [bins, inputs] ->
          # IO.inspect([bins, ugen_struct])
          # IO.inspect(inputs)
          [bins, newinput] = parse_input([bins, ugen_struct])
          inputs = inputs ++ [newinput]
          [bins, inputs]
        end
      )

    [bins, Map.put(ugen_struct, :inputs, inputs)]
  end

  # ugen
  def parse_rate([bins, ugen_struct]) do
    <<rate_id::8-unsigned-big, bins::binary>> = bins
    [bins, Map.put(ugen_struct, :rate, rate_id)]
  end

  def parse_outputs([bins, ugen_struct]) do
    bnc = ugen_struct.number_of_outputs * 1
    <<bc::binary-size(bnc), bins::binary>> = bins

    outputs =
      for <<x::8-unsigned-big <- bc>> do
        x
      end

    IO.puts("bc: #{inspect(bc)}")
    IO.puts("outputs: #{inspect(outputs)}")
    [bins, Map.put(ugen_struct, :outputs, outputs)]
  end

  def parse_ugen([bins, _struct]) do
    [bins, %SCSynthDef.SCSDUGen{}]
    |> parse_string(:name)
    |> IO.inspect()
    |> parse_rate()
    |> IO.inspect()
    |> parse_int32(:number_of_inputs)
    |> IO.inspect()
    |> parse_int32(:number_of_outputs)
    |> IO.inspect()
    |> parse_int16(:special_index)
    |> IO.inspect()
    |> parse_inputs()
    |> IO.inspect()
    |> parse_outputs()
    |> IO.inspect()
  end

  def parse_ugens([bins, struct = %{number_of_ugens: 0}]) do
    [bins, struct]
  end

  def parse_ugens([bins, struct = %{number_of_ugens: nu}]) do
    [bins, ugens] =
      SCSynthDef.Helper.do_n_times(
        nu,
        [bins, struct.ugens],
        fn [bins, ugens] ->
          [bins, nu] = parse_ugen([bins, ugens])
          ugens = ugens ++ [nu]
          [bins, ugens]
        end
      )

    [bins, Map.put(struct, :ugens, ugens)]
  end

  def parse_variant([bins, struct]) do
    [bins, map] =
      [bins, %{n: struct.number_of_parameters}]
      |> parse_string(:name)
      |> parse_float_array(:n, :parameters)

    [bins, struct(SCSynthDef.SCSDVariant, map)]
  end

  def parse_variants([bins, struct = %{number_of_variants: 0}]) do
    [bins, struct]
  end

  def parse_variants([bins, struct = %{number_of_variants: nv}]) do
    [bins, variants] =
      SCSynthDef.Helper.do_n_times(
        nv,
        [bins, struct.variants],
        fn [bins, variants] ->
          [bins, nu] = parse_variant([bins, struct])
          variants = variants ++ [nu]
          [bins, variants]
        end
      )

    [bins, Map.put(struct, :variants, variants)]
  end

  def parse_valid_beginning(bins) do
    <<@magic_string, bins::binary>> = bins
    <<@version::32-unsigned-big, bins::binary>> = bins
    <<@number_of_defs_in_file::16-unsigned-big, bins::binary>> = bins
    bins
  end

  def read(path) do
    {:ok, a} = File.read(path)
    byte_decode(a)
  end

  def byte_decode(bins) do
    bins = parse_valid_beginning(bins)

    ["", map] =
      [bins, %SCSynthDef{}]
      |> parse_string(:name)
      |> parse_int32(:number_of_constants)
      |> parse_float_array(:number_of_constants, :constants)
      |> parse_int32(:number_of_parameters)
      |> parse_float_array(:number_of_parameters, :parameters)
      |> parse_int32(:number_of_parameter_names)
      |> parse_parameter_names()
      |> parse_int32(:number_of_ugens)
      |> parse_ugens()
      |> parse_int16(:number_of_variants)
      |> parse_variants()

    map
  end
end
