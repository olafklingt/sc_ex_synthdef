defmodule UGen.HPF.Ar do
  def name(_ugen_struct), do: "HPF"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :freq]
  def special_index(_ugen_struct), do: 0
  def description do
    "2nd order Butterworth highpass filter."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:freq, float, default: 440.0)

  end
end
