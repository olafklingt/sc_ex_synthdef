defmodule UGen.BrownNoise.Ar do
  def name(_ugen_struct), do: "BrownNoise"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: []
  def special_index(_ugen_struct), do: 0
  def description do
    "Brown Noise."
  end

  use TypedStruct

  typedstruct do
    
  end
end
