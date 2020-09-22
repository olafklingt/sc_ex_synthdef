defmodule UGen.CuspN.Ar do
  def name(_ugen_struct), do: "CuspN"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :a, :b, :xi]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 22050)
    field(:a, float, default: 1)
    field(:b, float, default: 1.9)
    field(:xi, float, default: 0)

  end
end
