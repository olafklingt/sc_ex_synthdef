defmodule UGen.PartConv.Ar do
  def name(_ugen_struct), do: "PartConv"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :fftsize, :irbufnum]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:fftsize, float, default: nil)
    field(:irbufnum, float, default: nil)

  end
end
