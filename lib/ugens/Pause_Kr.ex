defmodule UGen.Pause.Kr do
  def name(_ugen_struct), do: "Pause"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:gate, :id]
  def special_index(_ugen_struct), do: 0
  def description do
    "When triggered, pauses a node."
  end

  use TypedStruct

  typedstruct do
    field(:gate, float, default: nil)
    field(:id, float, default: nil)

  end
end
