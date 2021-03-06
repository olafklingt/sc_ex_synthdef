defmodule UGen.InTrig.Kr do
  def name(_ugen_struct), do: "InTrig"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:bus, :numChannels]
  def special_index(_ugen_struct), do: 0
  def description do
    "Generate a trigger anytime a bus is set."
  end

  use TypedStruct

  typedstruct do
    field(:bus, float, default: 0)
    field(:numChannels, float, default: 1)

  end
end
