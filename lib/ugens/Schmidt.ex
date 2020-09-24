defmodule Schmidt do
  def ar(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.Schmidt.Ar{in: inv, lo: lo, hi: hi}
end
    def ir(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.Schmidt.Ir{in: inv, lo: lo, hi: hi}
end
    def kr(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.Schmidt.Kr{in: inv, lo: lo, hi: hi}
end

  def description do
    "Schmidt trigger."
  end

end
