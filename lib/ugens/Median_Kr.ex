defmodule UGen.Median.Kr do
  def name(_ugen_struct), do: "Median"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:length, :in]
  def special_index(_ugen_struct), do: 0
  def description do
    "Median filter."
  end

  use TypedStruct

  typedstruct do
    field(:length, float, default: 3)
    field(:in, float, default: 0.0)

  end
end
