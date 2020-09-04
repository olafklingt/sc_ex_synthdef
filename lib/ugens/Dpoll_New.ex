defmodule Dpoll.New do
  def name(_ugen_struct), do: "Dpoll"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:in, :label, :run, :trigid]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:label, float, default: nil)
    field(:run, float, default: 1)
    field(:trigid, float, default: -1)

  end
end
