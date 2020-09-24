defmodule UGen.BBandPass.Ar do
  def name(_ugen_struct), do: "BBandPass"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :freq, :bw]
  def special_index(_ugen_struct), do: 0
  def description do
    "Band Pass Filter"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:freq, float, default: 1.2e3)
    field(:bw, float, default: 1.0)

  end
end
