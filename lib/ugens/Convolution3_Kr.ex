defmodule UGen.Convolution3.Kr do
  def name(_ugen_struct), do: "Convolution3"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :kernel, :trigger, :framesize]
  def special_index(_ugen_struct), do: 0
  def description do
    "Time based convolver."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:kernel, float, default: nil)
    field(:trigger, float, default: 0)
    field(:framesize, float, default: 2048)

  end
end
