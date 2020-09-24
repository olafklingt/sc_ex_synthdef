defmodule UGen.Dreset.New do
  def name(_ugen_struct), do: "Dreset"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:in, :reset]
  def special_index(_ugen_struct), do: 0
  def description do
    "demand rate reset"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:reset, float, default: 0.0)

  end
end
