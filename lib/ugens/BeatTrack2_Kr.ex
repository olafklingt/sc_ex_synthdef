defmodule UGen.BeatTrack2.Kr do
  def name(_ugen_struct), do: "BeatTrack2"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 6
  def outputs(_ugen_struct), do: [1, 1, 1, 1, 1, 1]
  def args(_ugen_struct), do: [:busindex, :numfeatures, :windowsize, :phaseaccuracy, :lock, :weightingscheme]
  def special_index(_ugen_struct), do: 0
  def description do
    "Template matching beat tracker"
  end

  use TypedStruct

  typedstruct do
    field(:busindex, float, default: nil)
    field(:numfeatures, float, default: nil)
    field(:windowsize, float, default: 2.0)
    field(:phaseaccuracy, float, default: 0.02)
    field(:lock, float, default: 0)
    field(:weightingscheme, float, default: nil)

  end
end
