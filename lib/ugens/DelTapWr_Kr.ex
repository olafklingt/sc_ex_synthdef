defmodule DelTapWr.Kr do
  def name(_ugen_struct), do: "DelTapWr"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:buffer, :in]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:in, float, default: nil)

  end
end
