defmodule UGen.ToggleFF.Kr do
  def name(_ugen_struct), do: "ToggleFF"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:trig]
  def special_index(_ugen_struct), do: 0
  def description do
    "Toggle flip flop."
  end

  use TypedStruct

  typedstruct do
    field(:trig, float, default: 0.0)

  end
end
