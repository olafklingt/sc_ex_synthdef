defmodule UGen.Pitch.Kr do
  def name(_ugen_struct), do: "Pitch"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 2
  def outputs(_ugen_struct), do: [1, 1]
  def args(_ugen_struct), do: [:in, :initFreq, :minFreq, :maxFreq, :execFreq, :maxBinsPerOctave, :median, :ampThreshold, :peakThreshold, :downSample, :clar]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:initFreq, float, default: 440.0)
    field(:minFreq, float, default: 60.0)
    field(:maxFreq, float, default: 4.0e3)
    field(:execFreq, float, default: 100.0)
    field(:maxBinsPerOctave, float, default: 16)
    field(:median, float, default: 1)
    field(:ampThreshold, float, default: 0.01)
    field(:peakThreshold, float, default: 0.5)
    field(:downSample, float, default: 1)
    field(:clar, float, default: 0)

  end
end
