defmodule UGen.Phasor.Ar do
  def name(_ugen_struct), do: "Phasor"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:trig, :rate, :start, :end, :resetPos]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:trig, float, default: 0.0)
    field(:rate, float, default: 1.0)
    field(:start, float, default: 0.0)
    field(:end, float, default: 1.0)
    field(:resetPos, float, default: 0.0)

  end
end
