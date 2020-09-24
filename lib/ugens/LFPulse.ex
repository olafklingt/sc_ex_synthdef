defmodule LFPulse do
  def ar(freq \\ 440.0, iphase \\ 0.0, width \\ 0.5) do
  %UGen.LFPulse.Ar{freq: freq, iphase: iphase, width: width}
end
    def kr(freq \\ 440.0, iphase \\ 0.0, width \\ 0.5) do
  %UGen.LFPulse.Kr{freq: freq, iphase: iphase, width: width}
end

  def description do
    "pulse oscillator"
  end

end
