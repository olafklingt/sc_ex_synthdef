defmodule BPeakEQ do
  def ar(inv \\ nil, freq \\ 1.2e3, rq \\ 1.0, db \\ 0.0) do
  %UGen.BPeakEQ.Ar{in: inv, freq: freq, rq: rq, db: db}
end

  def description do
    "Parametric equalizer"
  end

end
