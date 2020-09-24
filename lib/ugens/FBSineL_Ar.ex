defmodule UGen.FBSineL.Ar do
  def name(_ugen_struct), do: "FBSineL"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :im, :fb, :a, :c, :xi, :yi]
  def special_index(_ugen_struct), do: 0
  def description do
    "Feedback sine with chaotic phase indexing"
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 22050)
    field(:im, float, default: 1)
    field(:fb, float, default: 0.1)
    field(:a, float, default: 1.1)
    field(:c, float, default: 0.5)
    field(:xi, float, default: 0.1)
    field(:yi, float, default: 0.1)

  end
end
