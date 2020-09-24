defmodule LFPar do
  def ar(freq \\ 440.0, iphase \\ 0.0) do
  %UGen.LFPar.Ar{freq: freq, iphase: iphase}
end
    def kr(freq \\ 440.0, iphase \\ 0.0) do
  %UGen.LFPar.Kr{freq: freq, iphase: iphase}
end

  def description do
    "Parabolic oscillator"
  end

end
