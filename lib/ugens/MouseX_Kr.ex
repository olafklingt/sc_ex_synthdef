defmodule UGen.MouseX.Kr do
  def name(_ugen_struct), do: "MouseX"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:minval, :maxval, :warp, :lag]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:minval, float, default: 0)
    field(:maxval, float, default: 1)
    field(:warp, float, default: 0)
    field(:lag, float, default: 0.2)

  end
end
