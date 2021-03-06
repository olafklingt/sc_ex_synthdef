defmodule UGen.DetectSilence.Ar do
  def name(_ugen_struct), do: "DetectSilence"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :amp, :time, :doneAction]
  def special_index(_ugen_struct), do: 0
  def description do
    "Detect when input falls below an amplitude threshold"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:amp, float, default: 0.0001)
    field(:time, float, default: 0.1)
    field(:doneAction, float, default: 0)

  end
end
