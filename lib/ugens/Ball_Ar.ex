defmodule UGen.Ball.Ar do
  def name(_ugen_struct), do: "Ball"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :g, :damp, :friction]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:g, float, default: 1)
    field(:damp, float, default: 0)
    field(:friction, float, default: 0.01)

  end
end
