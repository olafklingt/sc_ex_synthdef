defmodule UGen.InFeedback.Ar do
  def name(_ugen_struct), do: "InFeedback"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:bus, :numChannels]
  def special_index(_ugen_struct), do: 0
  def description do
    "Read signal from a bus with a current or one cycle old timestamp."
  end

  use TypedStruct

  typedstruct do
    field(:bus, float, default: 0)
    field(:numChannels, float, default: 1)

  end
end
