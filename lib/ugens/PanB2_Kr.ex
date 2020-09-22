defmodule UGen.PanB2.Kr do
  def name(_ugen_struct), do: "PanB2"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 3
  def outputs(_ugen_struct), do: [1, 1, 1]
  def args(_ugen_struct), do: [:in, :azimuth, :gain]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:azimuth, float, default: 0)
    field(:gain, float, default: 1)

  end
end
