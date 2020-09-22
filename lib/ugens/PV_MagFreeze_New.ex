defmodule UGen.PV_MagFreeze.New do
  def name(_ugen_struct), do: "PV_MagFreeze"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :freeze]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:freeze, float, default: 0.0)

  end
end
