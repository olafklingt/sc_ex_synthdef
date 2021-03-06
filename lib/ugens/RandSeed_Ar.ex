defmodule UGen.RandSeed.Ar do
  def name(_ugen_struct), do: "RandSeed"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:trig, :seed]
  def special_index(_ugen_struct), do: 0
  def description do
    "Sets the synth's random generator seed."
  end

  use TypedStruct

  typedstruct do
    field(:trig, float, default: 0.0)
    field(:seed, float, default: 56789)

  end
end
