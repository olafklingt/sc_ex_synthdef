defmodule PV_RectComb2.New do
  def name(_ugen_struct), do: "PV_RectComb2"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:bufferA, :bufferB, :numTeeth, :phase, :width]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:bufferA, float, default: nil)
    field(:bufferB, float, default: nil)
    field(:numTeeth, float, default: 0.0)
    field(:phase, float, default: 0.0)
    field(:width, float, default: 0.5)

  end
end
