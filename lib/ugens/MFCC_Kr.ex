defmodule UGen.MFCC.Kr do
  def name(_ugen_struct), do: "MFCC"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 13
  def outputs(_ugen_struct), do: [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
  def args(_ugen_struct), do: [:chain, :numcoeff]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:chain, float, default: nil)
    field(:numcoeff, float, default: 13)

  end
end
