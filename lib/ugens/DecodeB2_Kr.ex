defmodule UGen.DecodeB2.Kr do
  def name(_ugen_struct), do: "DecodeB2"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:numChans, :w, :x, :y, :orientation]
  def special_index(_ugen_struct), do: 0
  def description do
    "2D Ambisonic B-format decoder."
  end

  use TypedStruct

  typedstruct do
    field(:numChans, float, default: nil)
    field(:w, float, default: nil)
    field(:x, float, default: nil)
    field(:y, float, default: nil)
    field(:orientation, float, default: 0.5)

  end
end
