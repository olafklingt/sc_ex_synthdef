defmodule UGen.PitchShift.Ar do
  def name(_ugen_struct), do: "PitchShift"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :windowSize, :pitchRatio, :pitchDispersion, :timeDispersion]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:windowSize, float, default: 0.2)
    field(:pitchRatio, float, default: 1.0)
    field(:pitchDispersion, float, default: 0.0)
    field(:timeDispersion, float, default: 0.0)

  end
end
