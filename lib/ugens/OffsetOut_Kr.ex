defmodule UGen.OffsetOut.Kr do
  def name(_ugen_struct), do: "OffsetOut"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: []
  def special_index(_ugen_struct), do: 0
  def description do
    "Write a signal to a bus with sample accurate timing."
  end

  use TypedStruct

  typedstruct do
    
  end
end
