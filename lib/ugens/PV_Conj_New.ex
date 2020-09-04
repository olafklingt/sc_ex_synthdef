defmodule PV_Conj.New do
  def name(_ugen_struct), do: "PV_Conj"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)

  end
end
