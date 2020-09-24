defmodule LFSaw do
  def ar(freq \\ 440.0, iphase \\ 0.0) do
  %UGen.LFSaw.Ar{freq: freq, iphase: iphase}
end
    def kr(freq \\ 440.0, iphase \\ 0.0) do
  %UGen.LFSaw.Kr{freq: freq, iphase: iphase}
end

  def description do
    "Sawtooth oscillator"
  end

end
