defmodule SOS do
  def ar(inv \\ 0.0, a0 \\ 0.0, a1 \\ 0.0, a2 \\ 0.0, b1 \\ 0.0, b2 \\ 0.0) do
  %UGen.SOS.Ar{in: inv, a0: a0, a1: a1, a2: a2, b1: b1, b2: b2}
end
    def kr(inv \\ 0.0, a0 \\ 0.0, a1 \\ 0.0, a2 \\ 0.0, b1 \\ 0.0, b2 \\ 0.0) do
  %UGen.SOS.Kr{in: inv, a0: a0, a1: a1, a2: a2, b1: b1, b2: b2}
end

  def description do
    "Second order filter section (biquad)."
  end

end
