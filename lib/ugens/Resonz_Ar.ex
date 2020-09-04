defmodule Resonz.Ar do
  def name(_ugen_struct), do: "Resonz"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :freq, :bwr]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:freq, float, default: 440.0)
    field(:bwr, float, default: 1.0)

  end
end