defmodule UGen.LFDNoise0.Ar do
  def name(_ugen_struct), do: "LFDNoise0"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq]
  def special_index(_ugen_struct), do: 0
  def description do
    "Dynamic step noise"
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 500.0)

  end
end
