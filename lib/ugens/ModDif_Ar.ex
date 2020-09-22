defmodule UGen.ModDif.Ar do
  def name(_ugen_struct), do: "ModDif"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:x, :y, :mod]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:x, float, default: 0.0)
    field(:y, float, default: 0.0)
    field(:mod, float, default: 1.0)

  end
end
