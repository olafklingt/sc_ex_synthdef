defmodule UGen.COsc.Kr do
  def name(_ugen_struct), do: "COsc"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:bufnum, :freq, :beats]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:bufnum, float, default: nil)
    field(:freq, float, default: 440.0)
    field(:beats, float, default: 0.5)

  end
end
