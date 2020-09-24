defmodule UGen.Ball.Kr do
  def name(_ugen_struct), do: "Ball"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :g, :damp, :friction]
  def special_index(_ugen_struct), do: 0
  def description do
    "physical model of bouncing object"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:g, float, default: 1)
    field(:damp, float, default: 0)
    field(:friction, float, default: 0.01)

  end
end
