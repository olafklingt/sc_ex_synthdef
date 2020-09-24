defmodule UGen.Onsets.Kr do
  def name(_ugen_struct), do: "Onsets"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:chain, :threshold, :odftype, :relaxtime, :floor, :mingap, :medianspan, :whtype, :rawodf]
  def special_index(_ugen_struct), do: 0
  def description do
    "Onset detector"
  end

  use TypedStruct

  typedstruct do
    field(:chain, float, default: nil)
    field(:threshold, float, default: 0.5)
    field(:odftype, float, default: nil)
    field(:relaxtime, float, default: 1)
    field(:floor, float, default: 0.1)
    field(:mingap, float, default: 10)
    field(:medianspan, float, default: 11)
    field(:whtype, float, default: 1)
    field(:rawodf, float, default: 0)

  end
end
