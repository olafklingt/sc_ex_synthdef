defmodule Sum4.New do
  def name(_ugen_struct), do: "Sum4"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:in0, :in1, :in2, :in3]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in0, float, default: nil)
    field(:in1, float, default: nil)
    field(:in2, float, default: nil)
    field(:in3, float, default: nil)

  end
end
