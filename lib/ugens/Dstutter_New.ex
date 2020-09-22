defmodule UGen.Dstutter.New do
  def name(_ugen_struct), do: "Dstutter"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:n, :in]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:n, float, default: nil)
    field(:in, float, default: nil)

  end
end
