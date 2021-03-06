defmodule UGen.WrapIndex.Kr do
  def name(_ugen_struct), do: "WrapIndex"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:bufnum, :in]
  def special_index(_ugen_struct), do: 0
  def description do
    "Index into a table with a signal."
  end

  use TypedStruct

  typedstruct do
    field(:bufnum, float, default: nil)
    field(:in, float, default: 0.0)

  end
end
