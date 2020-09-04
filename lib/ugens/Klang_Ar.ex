defmodule Klang.Ar do
  def name(_ugen_struct), do: "Klang"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:specificationsArrayRef, :freqscale, :freqoffset]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:specificationsArrayRef, float, default: nil)
    field(:freqscale, float, default: 1.0)
    field(:freqoffset, float, default: 0.0)

  end
end
