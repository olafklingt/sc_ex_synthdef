defmodule UGen.TrigControl.Ir do
  def name(_ugen_struct), do: "TrigControl"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:values]
  def special_index(_ugen_struct), do: 0
  def description do
    "FIXME: TrigControl purpose."
  end

  use TypedStruct

  typedstruct do
    field(:values, float, default: nil)

  end
end
