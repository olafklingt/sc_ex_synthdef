defmodule UGen.AmpCompA.Ar do
  def name(_ugen_struct), do: "AmpCompA"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq, :root, :minAmp, :rootAmp]
  def special_index(_ugen_struct), do: 0
  def description do
    "Basic psychoacoustic amplitude compensation (ANSI A-weighting curve)."
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 1000)
    field(:root, float, default: 0)
    field(:minAmp, float, default: 0.32)
    field(:rootAmp, float, default: 1.0)

  end
end
