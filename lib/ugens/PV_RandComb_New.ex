defmodule UGen.PV_RandComb.New do
  def name(_ugen_struct), do: "PV_RandComb"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :wipe, :trig]
  def special_index(_ugen_struct), do: 0
  def description do
    "Pass random bins."
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:wipe, float, default: 0.0)
    field(:trig, float, default: 0.0)

  end
end
