defmodule SCSynthDef.Writer do
  @magic_string "SCgf"
  @version 2
  @number_of_defs_in_file 1

  defp from_pstring(string) do
    len = Kernel.byte_size(string)
    <<len::8-unsigned-big>> <> string
  end

  defp from_input(input) do
    <<input.index_of_ugen::32-signed-big, input.index_of_output::32-signed-big>>
  end

  defp from_ugen(ugen) do
    head =
      from_pstring(ugen.name) <>
        <<ugen.rate::8-signed-big>> <>
        <<ugen.number_of_inputs::32-signed-big>> <>
        <<ugen.number_of_outputs::32-signed-big>> <>
        <<ugen.special_index::16-signed-big>>

    head =
      Enum.reduce(ugen.inputs, head, fn input, head ->
        head <> from_input(input)
      end)

    head =
      Enum.reduce(ugen.outputs, head, fn output, head ->
        head <> <<output::8-signed-big>>
      end)

    head
  end

  defp from_variant(variant) do
    head = from_pstring(variant.name)

    Enum.reduce(variant.parameters, head, fn parameter, head ->
      head <> <<parameter::32-float>>
    end)
  end

  @spec byte_encode(SCSynthDef.Struct.t()) :: binary
  def byte_encode(sdef) when is_map(sdef) do
    head =
      <<@magic_string, @version::32-signed-big, @number_of_defs_in_file::16-signed-big>> <>
        from_pstring(sdef.name) <>
        <<sdef.number_of_constants::32-signed-big>>

    head =
      Enum.reduce(sdef.constants, head, fn constant, head ->
        head <> <<constant::32-float>>
      end) <>
        <<sdef.number_of_parameters::32-signed-big>>

    head =
      Enum.reduce(sdef.parameters, head, fn parameter, head ->
        head <> <<parameter::32-float>>
      end) <>
        <<sdef.number_of_parameter_names::32-signed-big>>

    head =
      Enum.reduce(sdef.parameter_names, head, fn parameter_name, head ->
        head <>
          from_pstring(Atom.to_string(parameter_name.name)) <>
          <<parameter_name.id::32-signed-big>>
      end) <>
        <<sdef.number_of_ugens::32-signed-big>>

    head =
      Enum.reduce(sdef.ugens, head, fn ugen, head ->
        head <> from_ugen(ugen)
      end) <>
        <<sdef.number_of_variants::16-signed-big>>

    head =
      Enum.reduce(sdef.variants, head, fn variant, head ->
        head <> from_variant(variant)
      end)

    head
  end
end
