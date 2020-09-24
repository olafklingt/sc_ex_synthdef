defmodule UGen.WhiteNoise.Ar do
  def name(_ugen_struct), do: "WhiteNoise"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: []
  def special_index(_ugen_struct), do: 0
  def description do
    "White noise."
  end

  use TypedStruct

  typedstruct do
    
  end
end
