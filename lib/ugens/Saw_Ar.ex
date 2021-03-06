defmodule UGen.Saw.Ar do
  def name(_ugen_struct), do: "Saw"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:freq]
  def special_index(_ugen_struct), do: 0
  def description do
    "Band limited sawtooth."
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: 440.0)

  end
end
