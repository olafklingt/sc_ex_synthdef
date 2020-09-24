defmodule UGen.Dgeom.New do
  def name(_ugen_struct), do: "Dgeom"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:start, :grow, :length]
  def special_index(_ugen_struct), do: 0
  def description do
    "Demand rate geometric series UGen."
  end

  use TypedStruct

  typedstruct do
    field(:start, float, default: 1)
    field(:grow, float, default: 2)
    field(:length, float, default: nil)

  end
end
