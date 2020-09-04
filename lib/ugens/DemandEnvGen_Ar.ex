defmodule DemandEnvGen.Ar do
  def name(_ugen_struct), do: "DemandEnvGen"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:level, :dur, :shape, :curve, :gate, :reset, :levelScale, :levelBias, :timeScale, :doneAction]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:level, float, default: nil)
    field(:dur, float, default: nil)
    field(:shape, float, default: 1)
    field(:curve, float, default: 0)
    field(:gate, float, default: 1.0)
    field(:reset, float, default: 1.0)
    field(:levelScale, float, default: 1.0)
    field(:levelBias, float, default: 0.0)
    field(:timeScale, float, default: 1.0)
    field(:doneAction, float, default: 0)

  end
end
