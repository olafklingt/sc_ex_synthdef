defmodule UGen.IndexInBetween.Ar do
  def name(_ugen_struct), do: "IndexInBetween"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:bufnum, :in]
  def special_index(_ugen_struct), do: 0
  def description do
    "Finds the (lowest) point in the Buffer at which the input signal lies in-between the two values"
  end

  use TypedStruct

  typedstruct do
    field(:bufnum, float, default: nil)
    field(:in, float, default: 0.0)

  end
end
