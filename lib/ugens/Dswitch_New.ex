defmodule UGen.Dswitch.New do
  def name(_ugen_struct), do: "Dswitch"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:list, :index]
  def special_index(_ugen_struct), do: 0
  def description do
    "Demand rate generator for embedding different inputs"
  end

  use TypedStruct

  typedstruct do
    field(:list, float, default: nil)
    field(:index, float, default: nil)

  end
end
