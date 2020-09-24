defmodule UGen.Wrap.Kr do
  def name(_ugen_struct), do: "Wrap"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :lo, :hi]
  def special_index(_ugen_struct), do: 0
  def description do
    "Wrap a signal outside given thresholds."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:lo, float, default: 0.0)
    field(:hi, float, default: 1.0)

  end
end
