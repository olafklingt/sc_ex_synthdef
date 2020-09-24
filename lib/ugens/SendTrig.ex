defmodule SendTrig do
  def ar(inv \\ 0.0, id \\ 0, value \\ 0.0) do
  %UGen.SendTrig.Ar{in: inv, id: id, value: value}
end
    def kr(inv \\ 0.0, id \\ 0, value \\ 0.0) do
  %UGen.SendTrig.Kr{in: inv, id: id, value: value}
end

  def description do
    "Send a trigger message from the server back to the client."
  end

end
