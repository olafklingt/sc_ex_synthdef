defmodule Compander do
  def ar(inv \\ 0.0, control \\ 0.0, thresh \\ 0.5, slopeBelow \\ 1.0, slopeAbove \\ 1.0, clampTime \\ 0.01, relaxTime \\ 0.1) do
  %UGen.Compander.Ar{in: inv, control: control, thresh: thresh, slopeBelow: slopeBelow, slopeAbove: slopeAbove, clampTime: clampTime, relaxTime: relaxTime}
end

  def description do
    "Compressor, expander, limiter, gate, ducker"
  end

end
