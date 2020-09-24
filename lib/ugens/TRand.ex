defmodule TRand do
  def ar(lo \\ 0.0, hi \\ 1.0, trig \\ 0.0) do
  %UGen.TRand.Ar{lo: lo, hi: hi, trig: trig}
end
    def kr(lo \\ 0.0, hi \\ 1.0, trig \\ 0.0) do
  %UGen.TRand.Kr{lo: lo, hi: hi, trig: trig}
end

  def description do
    "Triggered random number generator."
  end

end
