defmodule UGen.Convolution2L.Ar do
  def name(_ugen_struct), do: "Convolution2L"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :kernel, :trigger, :framesize, :crossfade]
  def special_index(_ugen_struct), do: 0
  def description do
    "Real-time convolver with linear interpolation"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:kernel, float, default: nil)
    field(:trigger, float, default: 0)
    field(:framesize, float, default: 2048)
    field(:crossfade, float, default: 1)

  end
end
