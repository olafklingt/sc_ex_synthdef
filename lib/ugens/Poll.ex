defmodule Poll do
  def ar(trig \\ nil, inv \\ nil, label \\ nil, trigid \\ -1) do
  %UGen.Poll.Ar{trig: trig, in: inv, label: label, trigid: trigid}
end
    def kr(trig \\ nil, inv \\ nil, label \\ nil, trigid \\ -1) do
  %UGen.Poll.Kr{trig: trig, in: inv, label: label, trigid: trigid}
end

  def description do
    "Print the current output value of a UGen"
  end

end
