defmodule PV_BinScramble.New do
  def name(_ugen_struct), do: "PV_BinScramble"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :wipe, :width, :trig]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:wipe, float, default: 0.0)
    field(:width, float, default: 0.2)
    field(:trig, float, default: 0.0)

  end
end
