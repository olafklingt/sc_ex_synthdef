defmodule Vibrato do
  def ar(freq \\ 440.0, rate \\ 6, depth \\ 0.02, delay \\ 0.0, onset \\ 0.0, rateVariation \\ 0.04, depthVariation \\ 0.1, iphase \\ 0.0, trig \\ 0.0) do
  %UGen.Vibrato.Ar{freq: freq, rate: rate, depth: depth, delay: delay, onset: onset, rateVariation: rateVariation, depthVariation: depthVariation, iphase: iphase, trig: trig}
end
    def kr(freq \\ 440.0, rate \\ 6, depth \\ 0.02, delay \\ 0.0, onset \\ 0.0, rateVariation \\ 0.04, depthVariation \\ 0.1, iphase \\ 0.0, trig \\ 0.0) do
  %UGen.Vibrato.Kr{freq: freq, rate: rate, depth: depth, delay: delay, onset: onset, rateVariation: rateVariation, depthVariation: depthVariation, iphase: iphase, trig: trig}
end

  def description do
    "The Vibrato oscillator models a slow frequency modulation."
  end

end
