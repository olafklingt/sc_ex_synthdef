defmodule UGen.RunningSum.Kr do
  def name(_ugen_struct), do: "RunningSum"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :numsamp]
  def special_index(_ugen_struct), do: 0
  def description do
    "Running sum over n frames"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:numsamp, float, default: 40)

  end
end
