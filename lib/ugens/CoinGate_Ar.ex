defmodule CoinGate.Ar do
  def name(_ugen_struct), do: "CoinGate"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:prob, :in]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:prob, float, default: nil)
    field(:in, float, default: nil)

  end
end
