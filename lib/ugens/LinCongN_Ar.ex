defmodule UGen.LinCongN.Ar do
  def name(_ugen_struct), do: "LinCongN"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :a, :c, :m, :xi]
  def special_index(_ugen_struct), do: 0
  def description do
    "Linear congruential chaotic generator"
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 22050)
    field(:a, float, default: 1.1)
    field(:c, float, default: 0.13)
    field(:m, float, default: 1.0)
    field(:xi, float, default: 0)

  end
end
