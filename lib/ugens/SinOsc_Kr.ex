defmodule UGen.SinOsc.Kr do
  def name(_ugen_struct), do: "SinOsc"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:freq, :phase]
  def special_index(_ugen_struct), do: 0
  def description do
    "Interpolating sine wavetable oscillator."
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 440.0)
    field(:phase, float, default: 0.0)

  end
end
