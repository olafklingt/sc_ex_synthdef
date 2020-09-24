defmodule UGen.SpecFlatness.Kr do
  def name(_ugen_struct), do: "SpecFlatness"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:buffer]
  def special_index(_ugen_struct), do: 0
  def description do
    "Spectral Flatness measure"
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)

  end
end
