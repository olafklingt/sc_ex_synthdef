defmodule UGen.Integrator.Ar do
  def name(_ugen_struct), do: "Integrator"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :coef]
  def special_index(_ugen_struct), do: 0
  def description do
    "A leaky integrator."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:coef, float, default: 1.0)

  end
end
