defmodule IRand.New do
  def name(_ugen_struct), do: "IRand"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:lo, :hi]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:lo, float, default: 0)
    field(:hi, float, default: 127)

  end
end
