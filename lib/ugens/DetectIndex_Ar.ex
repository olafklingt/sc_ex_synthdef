defmodule UGen.DetectIndex.Ar do
  def name(_ugen_struct), do: "DetectIndex"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:bufnum, :in]
  def special_index(_ugen_struct), do: 0
  def description do
    "Search a buffer for a value"
  end

  use TypedStruct

  typedstruct do
    field(:bufnum, float, default: nil)
    field(:in, float, default: 0.0)

  end
end
