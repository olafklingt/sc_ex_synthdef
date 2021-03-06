defmodule UGen.PV_MagMul.New do
  def name(_ugen_struct), do: "PV_MagMul"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:bufferA, :bufferB]
  def special_index(_ugen_struct), do: 0
  def description do
    "Multiply magnitudes."
  end

  use TypedStruct

  typedstruct do
    field(:bufferA, float, default: nil)
    field(:bufferB, float, default: nil)

  end
end
