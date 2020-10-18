defmodule UGen.SendReply.Kr do
  def name(_ugen_struct), do: "SendReply"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 0
  def outputs(_ugen_struct), do: []
  def args(_ugen_struct), do: [:trig, :cmdName, :values, :replyID]
  def special_index(_ugen_struct), do: 0
  def description do
    "Send an array of values from the server to all notified clients"
  end

  use TypedStruct

  typedstruct do
    field(:trig, float, default: 0.0)
    field(:cmdName, float, default: nil)
    field(:values, float, default: nil)
    field(:replyID, float, default: -1)

  end
end
