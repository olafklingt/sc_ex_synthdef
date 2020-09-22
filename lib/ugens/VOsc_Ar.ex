defmodule UGen.VOsc.Ar do
  def name(_ugen_struct), do: "VOsc"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:bufpos, :freq, :phase]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:bufpos, float, default: nil)
    field(:freq, float, default: 440.0)
    field(:phase, float, default: 0.0)

  end
end
