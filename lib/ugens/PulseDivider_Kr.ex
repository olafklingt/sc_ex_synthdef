defmodule UGen.PulseDivider.Kr do
  def name(_ugen_struct), do: "PulseDivider"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:trig, :div, :start]
  def special_index(_ugen_struct), do: 0
  def description do
    "Pulse divider."
  end

  use TypedStruct

  typedstruct do
    field(:trig, float, default: 0.0)
    field(:div, float, default: 2.0)
    field(:start, float, default: 0.0)

  end
end
