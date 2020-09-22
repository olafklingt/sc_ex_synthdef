defmodule UGen.CheckBadValues.Kr do
  def name(_ugen_struct), do: "CheckBadValues"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :id, :post]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:id, float, default: 0)
    field(:post, float, default: 2)

  end
end
