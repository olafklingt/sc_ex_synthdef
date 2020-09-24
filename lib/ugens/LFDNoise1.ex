defmodule LFDNoise1 do
  def ar(freq \\ 500.0) do
  %UGen.LFDNoise1.Ar{freq: freq}
end
    def kr(freq \\ 500.0) do
  %UGen.LFDNoise1.Kr{freq: freq}
end

  def description do
    "Dynamic ramp noise"
  end

end
