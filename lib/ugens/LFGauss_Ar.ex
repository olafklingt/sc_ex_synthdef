defmodule UGen.LFGauss.Ar do
  def name(_ugen_struct), do: "LFGauss"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:duration, :width, :iphase, :loop, :doneAction]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:duration, float, default: 1)
    field(:width, float, default: 0.1)
    field(:iphase, float, default: 0.0)
    field(:loop, float, default: 1)
    field(:doneAction, float, default: 0)

  end
end
