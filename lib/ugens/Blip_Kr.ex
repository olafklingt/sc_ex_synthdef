defmodule UGen.Blip.Kr do
  def name(_ugen_struct), do: "Blip"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:freq, :numharm]
  def special_index(_ugen_struct), do: 0
  def description do
    "Band limited impulse oscillator."
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 440.0)
    field(:numharm, float, default: 200.0)

  end
end
