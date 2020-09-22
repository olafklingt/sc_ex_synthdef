defmodule UGen.Linen.Kr do
  def name(_ugen_struct), do: "Linen"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:gate, :attackTime, :susLevel, :releaseTime, :doneAction]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:gate, float, default: 1.0)
    field(:attackTime, float, default: 0.01)
    field(:susLevel, float, default: 1.0)
    field(:releaseTime, float, default: 1.0)
    field(:doneAction, float, default: 0)

  end
end
