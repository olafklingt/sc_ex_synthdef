defmodule UGen.BHiPass.Ar do
  def name(_ugen_struct), do: "BHiPass"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :freq, :rq]
  def special_index(_ugen_struct), do: 0
  def description do
    "12db/oct rolloff - 2nd order resonant  Hi Pass Filter"
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:freq, float, default: 1.2e3)
    field(:rq, float, default: 1.0)

  end
end
