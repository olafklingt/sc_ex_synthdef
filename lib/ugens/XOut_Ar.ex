defmodule XOut.Ar do
  def name(_ugen_struct), do: "XOut"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:bus, :xfade, :channelsArray]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:bus, float, default: nil)
    field(:xfade, float, default: nil)
    field(:channelsArray, float, default: nil)

  end
end