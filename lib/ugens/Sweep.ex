defmodule Sweep do
  def ar(trig \\ 0.0, rate \\ 1.0) do
  %UGen.Sweep.Ar{trig: trig, rate: rate}
end
    def kr(trig \\ 0.0, rate \\ 1.0) do
  %UGen.Sweep.Kr{trig: trig, rate: rate}
end

  def description do
    "Triggered linear ramp"
  end

end
