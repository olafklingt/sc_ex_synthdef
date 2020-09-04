defmodule PV_PhaseShift.New do
  def name(_ugen_struct), do: "PV_PhaseShift"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :shift, :integrate]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:shift, float, default: nil)
    field(:integrate, float, default: 0)

  end
end
