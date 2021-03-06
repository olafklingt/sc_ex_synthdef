defmodule UGen.Decay.Kr do
  def name(_ugen_struct), do: "Decay"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :decayTime]
  def special_index(_ugen_struct), do: 0
  def description do
    "Exponential decay"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:decayTime, float, default: 1.0)

  end
end
