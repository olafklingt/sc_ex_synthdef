defmodule UGen.PV_BinShift.New do
  def name(_ugen_struct), do: "PV_BinShift"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :stretch, :shift, :interp]
  def special_index(_ugen_struct), do: 0
  def description do
    "Shift and stretch bin position."
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:stretch, float, default: 1.0)
    field(:shift, float, default: 0.0)
    field(:interp, float, default: 0)

  end
end
