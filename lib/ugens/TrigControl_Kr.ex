defmodule TrigControl.Kr do
  def name(_ugen_struct), do: "TrigControl"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:values]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:values, float, default: nil)

  end
end
