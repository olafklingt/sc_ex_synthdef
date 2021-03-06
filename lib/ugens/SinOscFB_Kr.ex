defmodule UGen.SinOscFB.Kr do
  def name(_ugen_struct), do: "SinOscFB"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:freq, :feedback]
  def special_index(_ugen_struct), do: 0
  def description do
    "Feedback FM oscillator"
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 440.0)
    field(:feedback, float, default: 0.0)

  end
end
