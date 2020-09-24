defmodule UGen.FOS.Ar do
  def name(_ugen_struct), do: "FOS"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :a0, :a1, :b1]
  def special_index(_ugen_struct), do: 0
  def description do
    "First order filter section."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:a0, float, default: 0.0)
    field(:a1, float, default: 0.0)
    field(:b1, float, default: 0.0)

  end
end
