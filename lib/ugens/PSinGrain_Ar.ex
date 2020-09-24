defmodule UGen.PSinGrain.Ar do
  def name(_ugen_struct), do: "PSinGrain"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :dur, :amp]
  def special_index(_ugen_struct), do: 0
  def description do
    "Very fast sine grain with a parabolic envelope"
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 440.0)
    field(:dur, float, default: 0.2)
    field(:amp, float, default: 0.1)

  end
end
