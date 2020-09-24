defmodule UGen.BufDur.Ir do
  def name(_ugen_struct), do: "BufDur"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:bufnum]
  def special_index(_ugen_struct), do: 0
  def description do
    "Current duration of soundfile in buffer."
  end

  use TypedStruct

  typedstruct do
    field(:bufnum, float, default: nil)

  end
end
