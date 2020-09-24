defmodule UGen.Formant.Ar do
  def name(_ugen_struct), do: "Formant"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:fundfreq, :formfreq, :bwfreq]
  def special_index(_ugen_struct), do: 0
  def description do
    "Formant oscillator"
  end

  use TypedStruct

  typedstruct do
    field(:fundfreq, float, default: 440.0)
    field(:formfreq, float, default: 1760.0)
    field(:bwfreq, float, default: 880.0)

  end
end
