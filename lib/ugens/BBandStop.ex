defmodule BBandStop do
  def ar(inv \\ nil, freq \\ 1.2e3, bw \\ 1.0) do
  %UGen.BBandStop.Ar{in: inv, freq: freq, bw: bw}
end

  def description do
    "Band reject filter"
  end

end
