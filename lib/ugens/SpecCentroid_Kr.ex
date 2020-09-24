defmodule UGen.SpecCentroid.Kr do
  def name(_ugen_struct), do: "SpecCentroid"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:buffer]
  def special_index(_ugen_struct), do: 0
  def description do
    "Spectral centroid"
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)

  end
end
