defmodule PanB2 do
  def ar(inv \\ nil, azimuth \\ 0, gain \\ 1) do
  %UGen.PanB2.Ar{in: inv, azimuth: azimuth, gain: gain}
end
    def kr(inv \\ nil, azimuth \\ 0, gain \\ 1) do
  %UGen.PanB2.Kr{in: inv, azimuth: azimuth, gain: gain}
end

  def description do
    "2D Ambisonic B-format panner."
  end

end
