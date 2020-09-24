defmodule UGen.T2A.Ar do
  def name(_ugen_struct), do: "T2A"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :offset]
  def special_index(_ugen_struct), do: 0
  def description do
    "Control rate trigger to audio rate trigger converter"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:offset, float, default: 0)

  end
end
