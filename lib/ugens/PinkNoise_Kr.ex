defmodule UGen.PinkNoise.Kr do
  def name(_ugen_struct), do: "PinkNoise"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: []
  def special_index(_ugen_struct), do: 0
  def description do
    "Pink Noise."
  end

  use TypedStruct

  typedstruct do
    
  end
end
