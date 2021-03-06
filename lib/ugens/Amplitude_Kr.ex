defmodule UGen.Amplitude.Kr do
  def name(_ugen_struct), do: "Amplitude"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :attackTime, :releaseTime]
  def special_index(_ugen_struct), do: 0
  def description do
    "Amplitude follower"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:attackTime, float, default: 0.01)
    field(:releaseTime, float, default: 0.01)

  end
end
