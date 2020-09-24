defmodule UGen.Pan4.Kr do
  def name(_ugen_struct), do: "Pan4"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 4
  def outputs(_ugen_struct), do: [1, 1, 1, 1]
  def args(_ugen_struct), do: [:in, :xpos, :ypos, :level]
  def special_index(_ugen_struct), do: 0
  def description do
    "Four channel equal power pan."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:xpos, float, default: 0.0)
    field(:ypos, float, default: 0.0)
    field(:level, float, default: 1.0)

  end
end
