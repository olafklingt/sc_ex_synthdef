defmodule Convolution.Ar do
  def name(_ugen_struct), do: "Convolution"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :kernel, :framesize]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:kernel, float, default: nil)
    field(:framesize, float, default: 512)

  end
end
