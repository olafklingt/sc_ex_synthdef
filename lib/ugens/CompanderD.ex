defmodule CompanderD do
  def ar(inv \\ 0.0, thresh \\ 0.5, slopeBelow \\ 1.0, slopeAbove \\ 1.0, clampTime \\ 0.01, relaxTime \\ 0.01) do
  %UGen.CompanderD.Ar{in: inv, thresh: thresh, slopeBelow: slopeBelow, slopeAbove: slopeAbove, clampTime: clampTime, relaxTime: relaxTime}
end

  def description do
    "Compressor, expander, limiter, gate, ducker."
  end

end
