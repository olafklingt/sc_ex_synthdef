defmodule UGen.PanAz.Ar do
  def name(_ugen_struct), do: "PanAz"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:numChans, :in, :pos, :level, :width, :orientation]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:numChans, float, default: nil)
    field(:in, float, default: nil)
    field(:pos, float, default: 0.0)
    field(:level, float, default: 1.0)
    field(:width, float, default: 2.0)
    field(:orientation, float, default: 0.5)

  end
end
