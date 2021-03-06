defmodule UGen.Dseq.New do
  def name(_ugen_struct), do: "Dseq"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:list, :repeats]
  def special_index(_ugen_struct), do: 0
  def description do
    "Demand rate sequence generator."
  end

  use TypedStruct

  typedstruct do
    field(:list, float, default: nil)
    field(:repeats, float, default: 1)

  end
end
