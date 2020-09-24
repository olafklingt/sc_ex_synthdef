defmodule UGen.Loudness.Kr do
  def name(_ugen_struct), do: "Loudness"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:chain, :smask, :tmask]
  def special_index(_ugen_struct), do: 0
  def description do
    "Extraction of instantaneous loudness in sones"
  end

  use TypedStruct

  typedstruct do
    field(:chain, float, default: nil)
    field(:smask, float, default: 0.25)
    field(:tmask, float, default: 1)

  end
end
