defmodule SpecPcile.Kr do
  def name(_ugen_struct), do: "SpecPcile"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:buffer, :fraction, :interpolate]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:fraction, float, default: 0.5)
    field(:interpolate, float, default: 0)

  end
end
