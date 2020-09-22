defmodule UGen.GbmanL.Ar do
  def name(_ugen_struct), do: "GbmanL"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :xi, :yi]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 22050)
    field(:xi, float, default: 1.2)
    field(:yi, float, default: 2.1)

  end
end
