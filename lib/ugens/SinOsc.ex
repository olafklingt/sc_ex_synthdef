defmodule SinOsc do
  def ar(freq \\ 440.0, phase \\ 0.0) do
  %UGen.SinOsc.Ar{freq: freq, phase: phase}
end
    def kr(freq \\ 440.0, phase \\ 0.0) do
  %UGen.SinOsc.Kr{freq: freq, phase: phase}
end

  def description do
    "Interpolating sine wavetable oscillator."
  end

end
