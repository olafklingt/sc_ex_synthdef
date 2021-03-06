defmodule UGen.PV_MagDiv.New do
  def name(_ugen_struct), do: "PV_MagDiv"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:bufferA, :bufferB, :zeroed]
  def special_index(_ugen_struct), do: 0
  def description do
    "Division of magnitudes"
  end

  use TypedStruct

  typedstruct do
    field(:bufferA, float, default: nil)
    field(:bufferB, float, default: nil)
    field(:zeroed, float, default: 0.0001)

  end
end
