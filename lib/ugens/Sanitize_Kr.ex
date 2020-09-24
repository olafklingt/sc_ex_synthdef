defmodule UGen.Sanitize.Kr do
  def name(_ugen_struct), do: "Sanitize"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :replace]
  def special_index(_ugen_struct), do: 0
  def description do
    "Remove infinity, NaN, and denormals"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:replace, float, default: 0.0)

  end
end
