defmodule Dibrown.New do
  def name(_ugen_struct), do: "Dibrown"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:lo, :hi, :step, :length]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:lo, float, default: 0.0)
    field(:hi, float, default: 1.0)
    field(:step, float, default: 0.01)
    field(:length, float, default: nil)

  end
end
