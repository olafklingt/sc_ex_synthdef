defmodule UGen.PV_ConformalMap.New do
  def name(_ugen_struct), do: "PV_ConformalMap"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :areal, :aimag]
  def special_index(_ugen_struct), do: 0
  def description do
    "Complex plane attack."
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:areal, float, default: 0.0)
    field(:aimag, float, default: 0.0)

  end
end
