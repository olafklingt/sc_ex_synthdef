defmodule UGen.PanB2.Ar do
  def name(_ugen_struct), do: "PanB2"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 3
  def outputs(_ugen_struct), do: [2, 2, 2]
  def args(_ugen_struct), do: [:in, :azimuth, :gain]
  def special_index(_ugen_struct), do: 0
  def description do
    "2D Ambisonic B-format panner."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:azimuth, float, default: 0)
    field(:gain, float, default: 1)

  end
end
