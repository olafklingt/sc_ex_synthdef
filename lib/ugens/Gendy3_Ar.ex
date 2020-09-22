defmodule UGen.Gendy3.Ar do
  def name(_ugen_struct), do: "Gendy3"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:ampdist, :durdist, :adparam, :ddparam, :freq, :ampscale, :durscale, :initCPs, :knum]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:ampdist, float, default: 1)
    field(:durdist, float, default: 1)
    field(:adparam, float, default: 1.0)
    field(:ddparam, float, default: 1.0)
    field(:freq, float, default: 440)
    field(:ampscale, float, default: 0.5)
    field(:durscale, float, default: 0.5)
    field(:initCPs, float, default: 12)
    field(:knum, float, default: nil)

  end
end
