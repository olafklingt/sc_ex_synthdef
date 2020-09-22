defmodule UGen.In.Kr do
  def name(_ugen_struct), do: "In"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:bus, :numChannels]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:bus, float, default: 0)
    field(:numChannels, float, default: 1)

  end
end
