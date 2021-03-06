defmodule UGen.Sweep.Kr do
  def name(_ugen_struct), do: "Sweep"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:trig, :rate]
  def special_index(_ugen_struct), do: 0
  def description do
    "Triggered linear ramp"
  end

  use TypedStruct

  typedstruct do
    field(:trig, float, default: 0.0)
    field(:rate, float, default: 1.0)

  end
end
