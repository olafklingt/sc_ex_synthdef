defmodule BBandPass do
  def ar(inv \\ nil, freq \\ 1.2e3, bw \\ 1.0) do
  %UGen.BBandPass.Ar{in: inv, freq: freq, bw: bw}
end

  def description do
    "Band Pass Filter"
  end

end
