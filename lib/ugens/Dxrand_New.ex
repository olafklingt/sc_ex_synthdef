defmodule UGen.Dxrand.New do
  def name(_ugen_struct), do: "Dxrand"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:list, :repeats]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:list, float, default: nil)
    field(:repeats, float, default: 1)

  end
end
