defmodule UGen.Latch.Ar do
  def name(_ugen_struct), do: "Latch"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :trig]
  def special_index(_ugen_struct), do: 0
  def description do
    "Sample and hold"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:trig, float, default: 0.0)

  end
end
