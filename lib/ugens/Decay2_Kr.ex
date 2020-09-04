defmodule Decay2.Kr do
  def name(_ugen_struct), do: "Decay2"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :attackTime, :decayTime]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:attackTime, float, default: 0.01)
    field(:decayTime, float, default: 1.0)

  end
end