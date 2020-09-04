defmodule BufWr.Ar do
  def name(_ugen_struct), do: "BufWr"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:inputArray, :bufnum, :phase, :loop]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:inputArray, float, default: nil)
    field(:bufnum, float, default: 0)
    field(:phase, float, default: 0.0)
    field(:loop, float, default: 1.0)

  end
end
