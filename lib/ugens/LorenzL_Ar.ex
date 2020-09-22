defmodule UGen.LorenzL.Ar do
  def name(_ugen_struct), do: "LorenzL"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :s, :r, :b, :h, :xi, :yi, :zi]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 22050)
    field(:s, float, default: 10)
    field(:r, float, default: 28)
    field(:b, float, default: 2.667)
    field(:h, float, default: 0.05)
    field(:xi, float, default: 0.1)
    field(:yi, float, default: 0)
    field(:zi, float, default: 0)

  end
end
