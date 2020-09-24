defmodule Phasor do
  def ar(trig \\ 0.0, rate \\ 1.0, start \\ 0.0, endv \\ 1.0, resetPos \\ 0.0) do
  %UGen.Phasor.Ar{trig: trig, rate: rate, start: start, end: endv, resetPos: resetPos}
end
    def kr(trig \\ 0.0, rate \\ 1.0, start \\ 0.0, endv \\ 1.0, resetPos \\ 0.0) do
  %UGen.Phasor.Kr{trig: trig, rate: rate, start: start, end: endv, resetPos: resetPos}
end

  def description do
    "A resettable linear ramp between two levels."
  end

end
