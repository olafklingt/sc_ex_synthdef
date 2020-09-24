defmodule UGen.LocalOut.Ar do
  def name(_ugen_struct), do: "LocalOut"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:channelsArray]
  def special_index(_ugen_struct), do: 0
  def description do
    "Write to buses local to a synth."
  end

  use TypedStruct

  typedstruct do
    field(:channelsArray, float, default: nil)

  end
end
