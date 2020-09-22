defmodule UGen.HenonC.Ar do
  def name(_ugen_struct), do: "HenonC"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :a, :b, :x0, :x1]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 22050)
    field(:a, float, default: 1.4)
    field(:b, float, default: 0.3)
    field(:x0, float, default: 0)
    field(:x1, float, default: 0)

  end
end
