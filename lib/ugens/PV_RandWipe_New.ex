defmodule UGen.PV_RandWipe.New do
  def name(_ugen_struct), do: "PV_RandWipe"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:bufferA, :bufferB, :wipe, :trig]
  def special_index(_ugen_struct), do: 0
  def description do
    "Crossfade in random bin order."
  end

  use TypedStruct

  typedstruct do
    field(:bufferA, float, default: nil)
    field(:bufferB, float, default: nil)
    field(:wipe, float, default: 0.0)
    field(:trig, float, default: 0.0)

  end
end
