defmodule UGen.Logistic.Ar do
  def name(_ugen_struct), do: "Logistic"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:chaosParam, :freq, :init]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:chaosParam, float, default: 3.0)
    field(:freq, float, default: 1.0e3)
    field(:init, float, default: 0.5)

  end
end
