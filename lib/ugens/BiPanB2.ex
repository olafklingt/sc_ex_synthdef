defmodule BiPanB2 do
  def ar(inA \\ nil, inB \\ nil, azimuth \\ nil, gain \\ 1) do
  %UGen.BiPanB2.Ar{inA: inA, inB: inB, azimuth: azimuth, gain: gain}
end
    def kr(inA \\ nil, inB \\ nil, azimuth \\ nil, gain \\ 1) do
  %UGen.BiPanB2.Kr{inA: inA, inB: inB, azimuth: azimuth, gain: gain}
end

  def description do
    "2D Ambisonic B-format panner."
  end

end
