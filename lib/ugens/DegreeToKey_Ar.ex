defmodule UGen.DegreeToKey.Ar do
  def name(_ugen_struct), do: "DegreeToKey"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:bufnum, :in, :octave]
  def special_index(_ugen_struct), do: 0
  def description do
    "Convert signal to modal pitch."
  end

  use TypedStruct

  typedstruct do
    field(:bufnum, float, default: nil)
    field(:in, float, default: 0.0)
    field(:octave, float, default: 12.0)

  end
end
