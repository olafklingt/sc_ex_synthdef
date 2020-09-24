defmodule UGen.LinExp.Kr do
  def name(_ugen_struct), do: "LinExp"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :srclo, :srchi, :dstlo, :dsthi]
  def special_index(_ugen_struct), do: 0
  def description do
    "Map a linear range to an exponential range"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:srclo, float, default: 0.0)
    field(:srchi, float, default: 1.0)
    field(:dstlo, float, default: 1.0)
    field(:dsthi, float, default: 2.0)

  end
end
