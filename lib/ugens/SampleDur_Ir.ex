defmodule UGen.SampleDur.Ir do
  def name(_ugen_struct), do: "SampleDur"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: []
  def special_index(_ugen_struct), do: 0
  def description do
    "Duration of one sample."
  end

  use TypedStruct

  typedstruct do
    
  end
end
