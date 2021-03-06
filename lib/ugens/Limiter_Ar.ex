defmodule UGen.Limiter.Ar do
  def name(_ugen_struct), do: "Limiter"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :level, :dur]
  def special_index(_ugen_struct), do: 0
  def description do
    "Peak limiter"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:level, float, default: 1.0)
    field(:dur, float, default: 0.01)

  end
end
