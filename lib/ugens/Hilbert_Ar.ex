defmodule UGen.Hilbert.Ar do
  def name(_ugen_struct), do: "Hilbert"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 2
  def outputs(_ugen_struct), do: [2, 2]
  def args(_ugen_struct), do: [:in]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)

  end
end
