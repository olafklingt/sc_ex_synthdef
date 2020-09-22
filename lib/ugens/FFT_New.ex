defmodule UGen.FFT.New do
  def name(_ugen_struct), do: "FFT"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:buffer, :in, :hop, :wintype, :active, :winsize]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:in, float, default: 0.0)
    field(:hop, float, default: 0.5)
    field(:wintype, float, default: 0)
    field(:active, float, default: 1)
    field(:winsize, float, default: 0)

  end
end
