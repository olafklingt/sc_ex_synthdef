defmodule UGen.FreqShift.Ar do
  def name(_ugen_struct), do: "FreqShift"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :freq, :phase]
  def special_index(_ugen_struct), do: 0
  def description do
    "Frequency Shifter."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:freq, float, default: 0.0)
    field(:phase, float, default: 0.0)

  end
end
