defmodule UGen.Ramp.Kr do
  def name(_ugen_struct), do: "Ramp"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :lagTime]
  def special_index(_ugen_struct), do: 0
  def description do
    "Break a continuous signal into line segments"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:lagTime, float, default: 0.1)

  end
end
