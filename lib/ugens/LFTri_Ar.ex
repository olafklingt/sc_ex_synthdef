defmodule UGen.LFTri.Ar do
  def name(_ugen_struct), do: "LFTri"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :iphase]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 440.0)
    field(:iphase, float, default: 0.0)

  end
end
