defmodule UGen.Dbufwr.New do
  def name(_ugen_struct), do: "Dbufwr"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:input, :bufnum, :phase, :loop]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:input, float, default: 0.0)
    field(:bufnum, float, default: 0)
    field(:phase, float, default: 0.0)
    field(:loop, float, default: 1.0)

  end
end
