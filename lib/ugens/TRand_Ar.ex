defmodule UGen.TRand.Ar do
  def name(_ugen_struct), do: "TRand"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:lo, :hi, :trig]
  def special_index(_ugen_struct), do: 0
  def description do
    "Triggered random number generator."
  end

  use TypedStruct

  typedstruct do
    field(:lo, float, default: 0.0)
    field(:hi, float, default: 1.0)
    field(:trig, float, default: 0.0)

  end
end
