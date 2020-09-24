defmodule RunningMax do
  def ar(inv \\ 0.0, trig \\ 0.0) do
  %UGen.RunningMax.Ar{in: inv, trig: trig}
end
    def kr(inv \\ 0.0, trig \\ 0.0) do
  %UGen.RunningMax.Kr{in: inv, trig: trig}
end

  def description do
    "Track maximum level."
  end

end
