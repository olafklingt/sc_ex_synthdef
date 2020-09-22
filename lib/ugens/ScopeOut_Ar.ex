defmodule UGen.ScopeOut.Ar do
  def name(_ugen_struct), do: "ScopeOut"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:inputArray, :bufnum]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:inputArray, float, default: nil)
    field(:bufnum, float, default: 0)

  end
end
