defmodule UGen.MoogFF.Ar do
  def name(_ugen_struct), do: "MoogFF"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :freq, :gain, :reset]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:freq, float, default: 100)
    field(:gain, float, default: 2)
    field(:reset, float, default: 0)

  end
end
