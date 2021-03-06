defmodule UGen.A2K.Kr do
  def name(_ugen_struct), do: "A2K"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in]
  def special_index(_ugen_struct), do: 0
  def description do
    "Audio to control rate converter."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)

  end
end
