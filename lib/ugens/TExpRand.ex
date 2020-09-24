defmodule TExpRand do
  def ar(lo \\ 0.01, hi \\ 1.0, trig \\ 0.0) do
  %UGen.TExpRand.Ar{lo: lo, hi: hi, trig: trig}
end
    def kr(lo \\ 0.01, hi \\ 1.0, trig \\ 0.0) do
  %UGen.TExpRand.Kr{lo: lo, hi: hi, trig: trig}
end

  def description do
    "Triggered exponential random number generator."
  end

end
