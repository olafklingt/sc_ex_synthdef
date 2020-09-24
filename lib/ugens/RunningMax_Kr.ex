defmodule UGen.RunningMax.Kr do
  def name(_ugen_struct), do: "RunningMax"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :trig]
  def special_index(_ugen_struct), do: 0
  def description do
    "Track maximum level."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:trig, float, default: 0.0)

  end
end
