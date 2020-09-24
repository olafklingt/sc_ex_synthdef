defmodule MoogFF do
  def ar(inv \\ nil, freq \\ 100, gain \\ 2, reset \\ 0) do
  %UGen.MoogFF.Ar{in: inv, freq: freq, gain: gain, reset: reset}
end
    def kr(inv \\ nil, freq \\ 100, gain \\ 2, reset \\ 0) do
  %UGen.MoogFF.Kr{in: inv, freq: freq, gain: gain, reset: reset}
end

  def description do
    "Moog VCF implementation, designed by Federico Fontana"
  end

end
