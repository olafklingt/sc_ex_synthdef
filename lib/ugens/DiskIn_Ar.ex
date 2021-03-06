defmodule UGen.DiskIn.Ar do
  def name(_ugen_struct), do: "DiskIn"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:numChannels, :bufnum, :loop]
  def special_index(_ugen_struct), do: 0
  def description do
    "Stream in audio from a file."
  end

  use TypedStruct

  typedstruct do
    field(:numChannels, float, default: nil)
    field(:bufnum, float, default: nil)
    field(:loop, float, default: 0)

  end
end
