defmodule Latch do
  def ar(inv \\ 0.0, trig \\ 0.0) do
  %UGen.Latch.Ar{in: inv, trig: trig}
end
    def kr(inv \\ 0.0, trig \\ 0.0) do
  %UGen.Latch.Kr{in: inv, trig: trig}
end

  def description do
    "Sample and hold"
  end

end
