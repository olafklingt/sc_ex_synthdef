defmodule InRange do
  def ar(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.InRange.Ar{in: inv, lo: lo, hi: hi}
end
    def ir(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.InRange.Ir{in: inv, lo: lo, hi: hi}
end
    def kr(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.InRange.Kr{in: inv, lo: lo, hi: hi}
end

  def description do
    "Tests if a signal is within a given range."
  end

end
