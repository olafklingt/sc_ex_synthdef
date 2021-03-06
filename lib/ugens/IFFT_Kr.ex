defmodule UGen.IFFT.Kr do
  def name(_ugen_struct), do: "IFFT"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:buffer, :wintype, :winsize]
  def special_index(_ugen_struct), do: 0
  def description do
    "Inverse Fast Fourier Transform"
  end

  use TypedStruct

  typedstruct do
    field(:buffer, float, default: nil)
    field(:wintype, float, default: 0)
    field(:winsize, float, default: 0)

  end
end
