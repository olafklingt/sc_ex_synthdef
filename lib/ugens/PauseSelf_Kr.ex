defmodule UGen.PauseSelf.Kr do
  def name(_ugen_struct), do: "PauseSelf"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in]
  def special_index(_ugen_struct), do: 0
  def description do
    "When triggered, pause enclosing synth."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)

  end
end
