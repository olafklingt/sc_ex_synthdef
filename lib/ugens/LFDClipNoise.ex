defmodule LFDClipNoise do
  def ar(freq \\ 500.0) do
  %UGen.LFDClipNoise.Ar{freq: freq}
end
    def kr(freq \\ 500.0) do
  %UGen.LFDClipNoise.Kr{freq: freq}
end

  def description do
    "Dynamic clipped noise"
  end

end
