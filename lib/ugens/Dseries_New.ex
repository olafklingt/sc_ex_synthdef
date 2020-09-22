defmodule UGen.Dseries.New do
  def name(_ugen_struct), do: "Dseries"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:start, :step, :length]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:start, float, default: 1)
    field(:step, float, default: 1)
    field(:length, float, default: nil)

  end
end
