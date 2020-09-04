defmodule Ramp.Ar do
  def name(_ugen_struct), do: "Ramp"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:in, :lagTime]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:lagTime, float, default: 0.1)

  end
end
