defmodule LocalIn.Kr do
  def name(_ugen_struct), do: "LocalIn"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:numChannels, :default]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:numChannels, float, default: 1)
    field(:default, float, default: 0.0)

  end
end
