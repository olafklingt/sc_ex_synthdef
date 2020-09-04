defmodule LocalBuf.New do
  def name(_ugen_struct), do: "LocalBuf"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:numFrames, :numChannels]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:numFrames, float, default: 1)
    field(:numChannels, float, default: 1)

  end
end
