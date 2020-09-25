defmodule UGen.Rotate2.Kr do
  def name(_ugen_struct), do: "Rotate2"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:x, :y, :pos]
  def special_index(_ugen_struct), do: 0
  def description do
    "Rotate a sound field."
  end

  use TypedStruct

  typedstruct do
    field(:x, float, default: nil)
    field(:y, float, default: nil)
    field(:pos, float, default: 0.0)

  end
end
