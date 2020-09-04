defmodule SOS.Kr do
  def name(_ugen_struct), do: "SOS"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :a0, :a1, :a2, :b1, :b2]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:a0, float, default: 0.0)
    field(:a1, float, default: 0.0)
    field(:a2, float, default: 0.0)
    field(:b1, float, default: 0.0)
    field(:b2, float, default: 0.0)

  end
end
