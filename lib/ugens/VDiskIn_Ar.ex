defmodule UGen.VDiskIn.Ar do
  def name(_ugen_struct), do: "VDiskIn"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:numChannels, :bufnum, :rate, :loop, :sendID]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:numChannels, float, default: nil)
    field(:bufnum, float, default: nil)
    field(:rate, float, default: 1)
    field(:loop, float, default: 0)
    field(:sendID, float, default: 0)

  end
end
