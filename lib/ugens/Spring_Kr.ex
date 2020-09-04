defmodule Spring.Kr do
  def name(_ugen_struct), do: "Spring"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :spring, :damp]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:spring, float, default: 1)
    field(:damp, float, default: 0)

  end
end
