defmodule UGen.PV_MagSmear.New do
  def name(_ugen_struct), do: "PV_MagSmear"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :bins]
  def special_index(_ugen_struct), do: 0
  def description do
    "Average magnitudes across bins."
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:bins, float, default: 0.0)

  end
end
