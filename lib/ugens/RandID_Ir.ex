defmodule RandID.Ir do
  def name(_ugen_struct), do: "RandID"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:id]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:id, float, default: 0)

  end
end
