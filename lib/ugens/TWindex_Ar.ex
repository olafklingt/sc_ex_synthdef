defmodule UGen.TWindex.Ar do
  def name(_ugen_struct), do: "TWindex"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :array, :normalize]
  def special_index(_ugen_struct), do: 0
  def description do
    "Triggered windex."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:array, float, default: nil)
    field(:normalize, float, default: 0)

  end
end
