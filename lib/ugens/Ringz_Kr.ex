defmodule UGen.Ringz.Kr do
  def name(_ugen_struct), do: "Ringz"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :freq, :decaytime]
  def special_index(_ugen_struct), do: 0
  def description do
    "Ringing filter."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:freq, float, default: 440.0)
    field(:decaytime, float, default: 1.0)

  end
end
