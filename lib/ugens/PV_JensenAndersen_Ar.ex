defmodule UGen.PV_JensenAndersen.Ar do
  def name(_ugen_struct), do: "PV_JensenAndersen"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:buffer, :propsc, :prophfe, :prophfc, :propsf, :threshold, :waittime]
  def special_index(_ugen_struct), do: 0
  def description do
    "FFT feature detector for onset detection."
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:propsc, float, default: 0.25)
    field(:prophfe, float, default: 0.25)
    field(:prophfc, float, default: 0.25)
    field(:propsf, float, default: 0.25)
    field(:threshold, float, default: 1.0)
    field(:waittime, float, default: 0.04)

  end
end
