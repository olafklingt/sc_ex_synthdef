defmodule UGen.OnePole.Kr do
  def name(_ugen_struct), do: "OnePole"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :coef]
  def special_index(_ugen_struct), do: 0
  def description do
    "One pole filter."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:coef, float, default: 0.5)

  end
end
