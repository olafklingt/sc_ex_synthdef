defmodule PanB.Ar do
  def name(_ugen_struct), do: "PanB"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 4
  def outputs(_ugen_struct), do: [2, 2, 2, 2]
  def args(_ugen_struct), do: [:in, :azimuth, :elevation, :gain]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:azimuth, float, default: 0)
    field(:elevation, float, default: 0)
    field(:gain, float, default: 1)

  end
end
