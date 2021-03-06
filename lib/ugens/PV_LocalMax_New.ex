defmodule UGen.PV_LocalMax.New do
  def name(_ugen_struct), do: "PV_LocalMax"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :threshold]
  def special_index(_ugen_struct), do: 0
  def description do
    "Pass bins which are a local maximum."
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:threshold, float, default: 0.0)

  end
end
