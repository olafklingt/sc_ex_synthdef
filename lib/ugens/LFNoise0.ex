defmodule LFNoise0 do
  def ar(freq \\ 500.0) do
  %UGen.LFNoise0.Ar{freq: freq}
end
    def kr(freq \\ 500.0) do
  %UGen.LFNoise0.Kr{freq: freq}
end

  def description do
    "Step noise"
  end

end
