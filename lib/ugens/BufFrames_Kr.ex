defmodule BufFrames.Kr do
  def name(_ugen_struct), do: "BufFrames"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:bufnum]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:bufnum, float, default: nil)

  end
end
