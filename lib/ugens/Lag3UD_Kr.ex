defmodule UGen.Lag3UD.Kr do
  def name(_ugen_struct), do: "Lag3UD"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:in, :lagTimeU, :lagTimeD]
  def special_index(_ugen_struct), do: 0
  def description do
    "Exponential lag"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:lagTimeU, float, default: 0.1)
    field(:lagTimeD, float, default: 0.1)

  end
end
