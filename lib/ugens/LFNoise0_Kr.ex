defmodule UGen.LFNoise0.Kr do
  def name(_ugen_struct), do: "LFNoise0"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:freq]
  def special_index(_ugen_struct), do: 0
  def description do
    "Step noise"
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 500.0)

  end
end
