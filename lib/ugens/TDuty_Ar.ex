defmodule UGen.TDuty.Ar do
  def name(_ugen_struct), do: "TDuty"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:dur, :reset, :level, :doneAction, :gapFirst]
  def special_index(_ugen_struct), do: 0
  def description do
    "Demand results as trigger from demand rate UGens."
  end

  use TypedStruct

  typedstruct do
    field(:dur, float, default: 1.0)
    field(:reset, float, default: 0.0)
    field(:level, float, default: 1.0)
    field(:doneAction, float, default: 0)
    field(:gapFirst, float, default: 0)

  end
end
