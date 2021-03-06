defmodule UGen.ReplaceOut.Kr do
  def name(_ugen_struct), do: "ReplaceOut"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:bus, :channelsArray]
  def special_index(_ugen_struct), do: 0
  def description do
    "Send signal to a bus, overwriting previous contents."
  end

  use TypedStruct

  typedstruct do
    field(:bus, float, default: nil)
    field(:channelsArray, float, default: nil)

  end
end
