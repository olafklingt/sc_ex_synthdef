defmodule UGen.Demand.Ar do
  def name(_ugen_struct), do: "Demand"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:trig, :reset, :demandUGens]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:trig, float, default: nil)
    field(:reset, float, default: nil)
    field(:demandUGens, float, default: nil)

  end
end
