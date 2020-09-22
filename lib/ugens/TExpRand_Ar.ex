defmodule UGen.TExpRand.Ar do
  def name(_ugen_struct), do: "TExpRand"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:lo, :hi, :trig]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:lo, float, default: 0.01)
    field(:hi, float, default: 1.0)
    field(:trig, float, default: 0.0)

  end
end
