defmodule UGen.SendTrig.Kr do
  def name(_ugen_struct), do: "SendTrig"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:in, :id, :value]
  def special_index(_ugen_struct), do: 0
  def description do
    "Send a trigger message from the server back to the client."
  end

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:id, float, default: 0)
    field(:value, float, default: 0.0)

  end
end
