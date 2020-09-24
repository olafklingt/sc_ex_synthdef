defmodule UGen.TwoZero.Kr do
  def name(_ugen_struct), do: "TwoZero"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :freq, :radius]
  def special_index(_ugen_struct), do: 0
  def description do
    "Two zero filter."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:freq, float, default: 440.0)
    field(:radius, float, default: 0.8)

  end
end
