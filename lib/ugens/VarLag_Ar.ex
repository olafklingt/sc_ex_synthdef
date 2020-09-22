defmodule UGen.VarLag.Ar do
  def name(_ugen_struct), do: "VarLag"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:in, :time, :curvature, :warp, :start]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:time, float, default: 0.1)
    field(:curvature, float, default: 0)
    field(:warp, float, default: 5)
    field(:start, float, default: nil)

  end
end
