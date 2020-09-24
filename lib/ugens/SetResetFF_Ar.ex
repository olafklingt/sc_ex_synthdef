defmodule UGen.SetResetFF.Ar do
  def name(_ugen_struct), do: "SetResetFF"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:trig, :reset]
  def special_index(_ugen_struct), do: 0
  def description do
    "Set-reset flip flop."
  end

  use TypedStruct

  typedstruct do
    field(:trig, float, default: 0.0)
    field(:reset, float, default: 0.0)

  end
end
