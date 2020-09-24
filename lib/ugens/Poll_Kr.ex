defmodule UGen.Poll.Kr do
  def name(_ugen_struct), do: "Poll"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:trig, :in, :label, :trigid]
  def special_index(_ugen_struct), do: 0
  def description do
    "Print the current output value of a UGen"
  end

  use TypedStruct

  typedstruct do
    field(:trig, float, default: nil)
    field(:in, float, default: nil)
    field(:label, float, default: nil)
    field(:trigid, float, default: -1)

  end
end
