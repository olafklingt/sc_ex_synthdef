defmodule UGen.PV_HainsworthFoote.Ar do
  def name(_ugen_struct), do: "PV_HainsworthFoote"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:buffer, :proph, :propf, :threshold, :waittime]
  def special_index(_ugen_struct), do: 0
  def description do
    "FFT onset detector."
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:proph, float, default: 0.0)
    field(:propf, float, default: 0.0)
    field(:threshold, float, default: 1.0)
    field(:waittime, float, default: 0.04)

  end
end
