defmodule UGen.BPF.Kr do
  def name(_ugen_struct), do: "BPF"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :freq, :rq]
  def special_index(_ugen_struct), do: 0
  def description do
    "2nd order Butterworth bandpass filter."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:freq, float, default: 440.0)
    field(:rq, float, default: 1.0)

  end
end
