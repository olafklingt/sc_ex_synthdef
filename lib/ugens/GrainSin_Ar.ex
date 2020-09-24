defmodule UGen.GrainSin.Ar do
  def name(_ugen_struct), do: "GrainSin"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:numChannels, :trigger, :dur, :freq, :pan, :envbufnum, :maxGrains]
  def special_index(_ugen_struct), do: 0
  def description do
    "Granular synthesis with sine tones"
  end

  use TypedStruct

  typedstruct do
    field(:numChannels, float, default: 1)
    field(:trigger, float, default: 0)
    field(:dur, float, default: 1)
    field(:freq, float, default: 440)
    field(:pan, float, default: 0)
    field(:envbufnum, float, default: -1)
    field(:maxGrains, float, default: 512)

  end
end
