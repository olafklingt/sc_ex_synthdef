defmodule UGen.DelTapRd.Ar do
  def name(_ugen_struct), do: "DelTapRd"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:buffer, :phase, :delTime, :interp]
  def special_index(_ugen_struct), do: 0
  def description do
    "Tap a delay line from a DelTapWr UGen"
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:phase, float, default: nil)
    field(:delTime, float, default: nil)
    field(:interp, float, default: 1)

  end
end
