defmodule UGen.Vibrato.Kr do
  def name(_ugen_struct), do: "Vibrato"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:freq, :rate, :depth, :delay, :onset, :rateVariation, :depthVariation, :iphase, :trig]
  def special_index(_ugen_struct), do: 0
  def description do
    "The Vibrato oscillator models a slow frequency modulation."
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 440.0)
    field(:rate, float, default: 6)
    field(:depth, float, default: 0.02)
    field(:delay, float, default: 0.0)
    field(:onset, float, default: 0.0)
    field(:rateVariation, float, default: 0.04)
    field(:depthVariation, float, default: 0.1)
    field(:iphase, float, default: 0.0)
    field(:trig, float, default: 0.0)

  end
end
