defmodule UGen.FreeVerb2.Ar do
  def name(_ugen_struct), do: "FreeVerb2"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 2
  def outputs(_ugen_struct), do: [2, 2]
  def args(_ugen_struct), do: [:in, :in2, :mix, :room, :damp]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:in2, float, default: nil)
    field(:mix, float, default: 0.33)
    field(:room, float, default: 0.5)
    field(:damp, float, default: 0.5)

  end
end
