defmodule Dunique.New do
  def name(_ugen_struct), do: "Dunique"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:source, :maxBufferSize, :protected]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:source, float, default: nil)
    field(:maxBufferSize, float, default: 1024)
    field(:protected, float, default: nil)

  end
end
