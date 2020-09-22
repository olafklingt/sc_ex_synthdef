defmodule UGen.TBall.Kr do
  def name(_ugen_struct), do: "TBall"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :g, :damp, :friction]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:g, float, default: 10)
    field(:damp, float, default: 0)
    field(:friction, float, default: 0.01)

  end
end
