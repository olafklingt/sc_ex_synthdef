defmodule UGen.InRect.Kr do
  def name(_ugen_struct), do: "InRect"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:x, :y, :rect]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:x, float, default: 0.0)
    field(:y, float, default: 0.0)
    field(:rect, float, default: nil)

  end
end
