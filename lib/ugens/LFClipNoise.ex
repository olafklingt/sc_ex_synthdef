defmodule LFClipNoise do
  def ar(freq \\ 500.0) do
  %UGen.LFClipNoise.Ar{freq: freq}
end
    def kr(freq \\ 500.0) do
  %UGen.LFClipNoise.Kr{freq: freq}
end

end
