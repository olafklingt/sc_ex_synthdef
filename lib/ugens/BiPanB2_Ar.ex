defmodule UGen.BiPanB2.Ar do
  def name(_ugen_struct), do: "BiPanB2"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 3
  def outputs(_ugen_struct), do: [2, 2, 2]
  def args(_ugen_struct), do: [:inA, :inB, :azimuth, :gain]
  def special_index(_ugen_struct), do: 0
  def description do
    "2D Ambisonic B-format panner."
  end

  use TypedStruct

  typedstruct do
    field(:inA, float, default: nil)
    field(:inB, float, default: nil)
    field(:azimuth, float, default: nil)
    field(:gain, float, default: 1)

  end
end
