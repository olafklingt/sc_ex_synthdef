defmodule LFNoise1 do
  def ar(freq \\ 500.0) do
  %UGen.LFNoise1.Ar{freq: freq}
end
    def kr(freq \\ 500.0) do
  %UGen.LFNoise1.Kr{freq: freq}
end

  def description do
    "Ramp noise"
  end

end
