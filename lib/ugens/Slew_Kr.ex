defmodule Slew.Kr do
  def name(_ugen_struct), do: "Slew"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:in, :up, :dn]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:up, float, default: 1.0)
    field(:dn, float, default: 1.0)

  end
end
