defmodule UGen.Free.Kr do
  def name(_ugen_struct), do: "Free"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:trig, :id]
  def special_index(_ugen_struct), do: 0
  def description do
    "When triggered, frees a node."
  end

  use TypedStruct

  typedstruct do
    field(:trig, float, default: nil)
    field(:id, float, default: nil)

  end
end
