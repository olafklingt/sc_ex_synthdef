defmodule UGen.Pan2.Ar do
  def name(_ugen_struct), do: "Pan2"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 2
  def outputs(_ugen_struct), do: [2, 2]
  def args(_ugen_struct), do: [:in, :pos, :level]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:pos, float, default: 0.0)
    field(:level, float, default: 1.0)

  end
end
