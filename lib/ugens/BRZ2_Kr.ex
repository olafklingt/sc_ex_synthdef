defmodule UGen.BRZ2.Kr do
  def name(_ugen_struct), do: "BRZ2"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in]
  def special_index(_ugen_struct), do: 0
  def description do
    "Two zero fixed midcut."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)

  end
end
