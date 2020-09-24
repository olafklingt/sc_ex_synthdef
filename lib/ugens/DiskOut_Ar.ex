defmodule UGen.DiskOut.Ar do
  def name(_ugen_struct), do: "DiskOut"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:bufnum, :channelsArray]
  def special_index(_ugen_struct), do: 0
  def description do
    "Record to a soundfile to disk."
  end

  use TypedStruct

  typedstruct do
    field(:bufnum, float, default: nil)
    field(:channelsArray, float, default: nil)

  end
end
