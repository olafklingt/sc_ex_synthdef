defmodule Compander.Ar do
  def name(_ugen_struct), do: "Compander"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :control, :thresh, :slopeBelow, :slopeAbove, :clampTime, :relaxTime]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:control, float, default: 0.0)
    field(:thresh, float, default: 0.5)
    field(:slopeBelow, float, default: 1.0)
    field(:slopeAbove, float, default: 1.0)
    field(:clampTime, float, default: 0.01)
    field(:relaxTime, float, default: 0.1)

  end
end
