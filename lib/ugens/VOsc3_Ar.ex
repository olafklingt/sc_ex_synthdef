defmodule VOsc3.Ar do
  def name(_ugen_struct), do: "VOsc3"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:bufpos, :freq1, :freq2, :freq3]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:bufpos, float, default: nil)
    field(:freq1, float, default: 110.0)
    field(:freq2, float, default: 220.0)
    field(:freq3, float, default: 440.0)

  end
end
