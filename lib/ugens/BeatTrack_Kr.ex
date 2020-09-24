defmodule UGen.BeatTrack.Kr do
  def name(_ugen_struct), do: "BeatTrack"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:chain, :lock]
  def special_index(_ugen_struct), do: 0
  def description do
    "Autocorrelation beat tracker"
  end

  use TypedStruct

  typedstruct do
    field(:chain, float, default: nil)
    field(:lock, float, default: 0)

  end
end
