defmodule PulseDivider do
  def ar(trig \\ 0.0, div \\ 2.0, start \\ 0.0) do
  %UGen.PulseDivider.Ar{trig: trig, div: div, start: start}
end
    def kr(trig \\ 0.0, div \\ 2.0, start \\ 0.0) do
  %UGen.PulseDivider.Kr{trig: trig, div: div, start: start}
end

  def description do
    "Pulse divider."
  end

end
