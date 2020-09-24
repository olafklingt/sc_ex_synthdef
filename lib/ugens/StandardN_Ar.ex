defmodule UGen.StandardN.Ar do
  def name(_ugen_struct), do: "StandardN"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :k, :xi, :yi]
  def special_index(_ugen_struct), do: 0
  def description do
    "Standard map chaotic generator"
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 22050)
    field(:k, float, default: 1.0)
    field(:xi, float, default: 0.5)
    field(:yi, float, default: 0)

  end
end
