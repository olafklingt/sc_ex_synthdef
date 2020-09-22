defmodule UGen.XFade2.Ar do
  def name(_ugen_struct), do: "XFade2"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:inA, :inB, :pan, :level]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:inA, float, default: nil)
    field(:inB, float, default: 0.0)
    field(:pan, float, default: 0.0)
    field(:level, float, default: 1.0)

  end
end
