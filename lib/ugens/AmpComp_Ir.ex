defmodule UGen.AmpComp.Ir do
  def name(_ugen_struct), do: "AmpComp"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:freq, :root, :exp]
  def special_index(_ugen_struct), do: 0
  def description do
    "Basic psychoacoustic amplitude compensation."
  end

  use TypedStruct

  typedstruct do
    field(:freq, float, default: nil)
    field(:root, float, default: nil)
    field(:exp, float, default: 0.3333)

  end
end
