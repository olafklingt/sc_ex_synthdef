defmodule UGen.RecordBuf.Ar do
  def name(_ugen_struct), do: "RecordBuf"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:inputArray, :bufnum, :offset, :recLevel, :preLevel, :run, :loop, :trigger, :doneAction]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:inputArray, float, default: nil)
    field(:bufnum, float, default: 0)
    field(:offset, float, default: 0.0)
    field(:recLevel, float, default: 1.0)
    field(:preLevel, float, default: 0.0)
    field(:run, float, default: 1.0)
    field(:loop, float, default: 1.0)
    field(:trigger, float, default: 1.0)
    field(:doneAction, float, default: 0)

  end
end
