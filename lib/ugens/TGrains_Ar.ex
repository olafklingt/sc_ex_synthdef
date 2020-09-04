defmodule TGrains.Ar do
  def name(_ugen_struct), do: "TGrains"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:numChannels, :trigger, :bufnum, :rate, :centerPos, :dur, :pan, :amp, :interp]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:numChannels, float, default: nil)
    field(:trigger, float, default: 0)
    field(:bufnum, float, default: 0)
    field(:rate, float, default: 1)
    field(:centerPos, float, default: 0)
    field(:dur, float, default: 0.1)
    field(:pan, float, default: 0)
    field(:amp, float, default: 0.1)
    field(:interp, float, default: 4)

  end
end
