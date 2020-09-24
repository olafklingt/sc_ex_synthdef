defmodule UGen.Stepper.Ar do
  def name(_ugen_struct), do: "Stepper"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:trig, :reset, :min, :max, :step, :resetval]
  def special_index(_ugen_struct), do: 0
  def description do
    "Pulse counter."
  end

  use TypedStruct

  typedstruct do
    field(:trig, float, default: 0)
    field(:reset, float, default: 0)
    field(:min, float, default: 0)
    field(:max, float, default: 7)
    field(:step, float, default: 1)
    field(:resetval, float, default: nil)

  end
end
