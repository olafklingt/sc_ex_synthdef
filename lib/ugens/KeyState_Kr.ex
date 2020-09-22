defmodule UGen.KeyState.Kr do
  def name(_ugen_struct), do: "KeyState"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:keycode, :minval, :maxval, :lag]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:keycode, float, default: 0)
    field(:minval, float, default: 0)
    field(:maxval, float, default: 1)
    field(:lag, float, default: 0.2)

  end
end
