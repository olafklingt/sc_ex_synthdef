defmodule UGen.PV_BrickWall.New do
  def name(_ugen_struct), do: "PV_BrickWall"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :wipe]
  def special_index(_ugen_struct), do: 0
  def description do
    "Zero bins."
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:wipe, float, default: 0.0)

  end
end
