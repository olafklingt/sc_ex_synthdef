defmodule UGen.EnvGen.Kr do
  def name(_ugen_struct), do: "EnvGen"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:envelope, :gate, :levelScale, :levelBias, :timeScale, :doneAction]
  def special_index(_ugen_struct), do: 0
  def description do
    "Envelope generator"
  end

  use TypedStruct

  typedstruct do
    field(:envelope, float, default: nil)
    field(:gate, float, default: 1.0)
    field(:levelScale, float, default: 1.0)
    field(:levelBias, float, default: 0.0)
    field(:timeScale, float, default: 1.0)
    field(:doneAction, float, default: 0)

  end
end
