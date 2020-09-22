defmodule UGen.Warp1.Ar do
  def name(_ugen_struct), do: "Warp1"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:numChannels, :bufnum, :pointer, :freqScale, :windowSize, :envbufnum, :overlaps, :windowRandRatio, :interp]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:numChannels, float, default: 1)
    field(:bufnum, float, default: 0)
    field(:pointer, float, default: 0)
    field(:freqScale, float, default: 1)
    field(:windowSize, float, default: 0.2)
    field(:envbufnum, float, default: -1)
    field(:overlaps, float, default: 8)
    field(:windowRandRatio, float, default: 0.0)
    field(:interp, float, default: 1)

  end
end
