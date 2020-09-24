defmodule LFCub do
  def ar(freq \\ 440.0, iphase \\ 0.0) do
  %UGen.LFCub.Ar{freq: freq, iphase: iphase}
end
    def kr(freq \\ 440.0, iphase \\ 0.0) do
  %UGen.LFCub.Kr{freq: freq, iphase: iphase}
end

  def description do
    "A sine like shape made of two cubic pieces"
  end

end
