defmodule UGen.Crackle.Kr do
  def name(_ugen_struct), do: "Crackle"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:chaosParam]
  def special_index(_ugen_struct), do: 0
  def description do
    "Chaotic noise function."
  end

  use TypedStruct

  typedstruct do
    field(:chaosParam, float, default: 1.5)

  end
end
