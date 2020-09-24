defmodule UGen.GrainFM.Ar do
  def name(_ugen_struct), do: "GrainFM"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:numChannels, :trigger, :dur, :carfreq, :modfreq, :index, :pan, :envbufnum, :maxGrains]
  def special_index(_ugen_struct), do: 0
  def description do
    "Granular synthesis with frequency modulated sine tones"
  end

  use TypedStruct

  typedstruct do
    field(:numChannels, float, default: 1)
    field(:trigger, float, default: 0)
    field(:dur, float, default: 1)
    field(:carfreq, float, default: 440)
    field(:modfreq, float, default: 200)
    field(:index, float, default: 1)
    field(:pan, float, default: 0)
    field(:envbufnum, float, default: -1)
    field(:maxGrains, float, default: 512)

  end
end
