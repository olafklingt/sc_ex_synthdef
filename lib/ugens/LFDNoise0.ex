defmodule LFDNoise0 do
  def ar(freq \\ 500.0) do
  %UGen.LFDNoise0.Ar{freq: freq}
end
    def kr(freq \\ 500.0) do
  %UGen.LFDNoise0.Kr{freq: freq}
end

  def description do
    "Dynamic step noise"
  end

end
