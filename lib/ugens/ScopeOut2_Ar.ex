defmodule UGen.ScopeOut2.Ar do
  def name(_ugen_struct), do: "ScopeOut2"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:inputArray, :scopeNum, :maxFrames, :scopeFrames]
  def special_index(_ugen_struct), do: 0
  def description do
    "(Undocumented class)"
  end

  use TypedStruct

  typedstruct do
    field(:inputArray, float, default: nil)
    field(:scopeNum, float, default: 0)
    field(:maxFrames, float, default: 4096)
    field(:scopeFrames, float, default: nil)

  end
end
