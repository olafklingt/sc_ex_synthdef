defmodule UGen.NumInputBuses.Ir do
  def name(_ugen_struct), do: "NumInputBuses"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: []
  def special_index(_ugen_struct), do: 0
  def description do
    "Number of input busses."
  end

  use TypedStruct

  typedstruct do
    
  end
end
