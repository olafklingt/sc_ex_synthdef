defmodule UGen.Dconst.New do
  def name(_ugen_struct), do: "Dconst"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:sum, :in, :tolerance]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:sum, float, default: nil)
    field(:in, float, default: nil)
    field(:tolerance, float, default: 0.001)

  end
end
