defmodule SyncSaw.Kr do
  def name(_ugen_struct), do: "SyncSaw"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:syncFreq, :sawFreq]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:syncFreq, float, default: 440.0)
    field(:sawFreq, float, default: 440.0)

  end
end
