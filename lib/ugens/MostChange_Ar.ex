defmodule MostChange.Ar do
  def name(_ugen_struct), do: "MostChange"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:a, :b]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:a, float, default: 0.0)
    field(:b, float, default: 0.0)

  end
end
