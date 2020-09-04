defmodule Line.Kr do
  def name(_ugen_struct), do: "Line"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:start, :end, :dur, :doneAction]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:start, float, default: 0.0)
    field(:end, float, default: 1.0)
    field(:dur, float, default: 1.0)
    field(:doneAction, float, default: 0)

  end
end
