defmodule PlayBuf.Ar do
  def name(_ugen_struct), do: "PlayBuf"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:numChannels, :bufnum, :rate, :trigger, :startPos, :loop, :doneAction]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:numChannels, float, default: nil)
    field(:bufnum, float, default: 0)
    field(:rate, float, default: 1.0)
    field(:trigger, float, default: 1.0)
    field(:startPos, float, default: 0.0)
    field(:loop, float, default: 0.0)
    field(:doneAction, float, default: 0)

  end
end
