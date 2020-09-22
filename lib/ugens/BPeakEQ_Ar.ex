defmodule UGen.BPeakEQ.Ar do
  def name(_ugen_struct), do: "BPeakEQ"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :freq, :rq, :db]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:freq, float, default: 1.2e3)
    field(:rq, float, default: 1.0)
    field(:db, float, default: 0.0)

  end
end
