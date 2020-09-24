defmodule BRF do
  def ar(inv \\ 0.0, freq \\ 440.0, rq \\ 1.0) do
  %UGen.BRF.Ar{in: inv, freq: freq, rq: rq}
end
    def kr(inv \\ 0.0, freq \\ 440.0, rq \\ 1.0) do
  %UGen.BRF.Kr{in: inv, freq: freq, rq: rq}
end

  def description do
    "2nd order Butterworth band reject filter."
  end

end
