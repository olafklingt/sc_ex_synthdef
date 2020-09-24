defmodule BPF do
  def ar(inv \\ 0.0, freq \\ 440.0, rq \\ 1.0) do
  %UGen.BPF.Ar{in: inv, freq: freq, rq: rq}
end
    def kr(inv \\ 0.0, freq \\ 440.0, rq \\ 1.0) do
  %UGen.BPF.Kr{in: inv, freq: freq, rq: rq}
end

  def description do
    "2nd order Butterworth bandpass filter."
  end

end
