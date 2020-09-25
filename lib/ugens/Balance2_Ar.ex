defmodule UGen.Balance2.Ar do
  def name(_ugen_struct), do: "Balance2"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:left, :right, :pos, :level]
  def special_index(_ugen_struct), do: 0
  def description do
    "Stereo signal balancer"
  end

  use TypedStruct

  typedstruct do
    field(:left, float, default: nil)
    field(:right, float, default: nil)
    field(:pos, float, default: 0.0)
    field(:level, float, default: 1.0)

  end
end
