defmodule GrainBuf.Ar do
  def name(_ugen_struct), do: "GrainBuf"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:numChannels, :trigger, :dur, :sndbuf, :rate, :pos, :interp, :pan, :envbufnum, :maxGrains]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:numChannels, float, default: 1)
    field(:trigger, float, default: 0)
    field(:dur, float, default: 1)
    field(:sndbuf, float, default: nil)
    field(:rate, float, default: 1)
    field(:pos, float, default: 0)
    field(:interp, float, default: 2)
    field(:pan, float, default: 0)
    field(:envbufnum, float, default: -1)
    field(:maxGrains, float, default: 512)

  end
end
