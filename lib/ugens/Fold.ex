defmodule Fold do
  def ar(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.Fold.Ar{in: inv, lo: lo, hi: hi}
end
    def ir(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.Fold.Ir{in: inv, lo: lo, hi: hi}
end
    def kr(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.Fold.Kr{in: inv, lo: lo, hi: hi}
end

  def description do
    "Fold a signal outside given thresholds."
  end

end
