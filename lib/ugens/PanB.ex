defmodule PanB do
  def ar(inv \\ nil, azimuth \\ 0, elevation \\ 0, gain \\ 1) do
  %UGen.PanB.Ar{in: inv, azimuth: azimuth, elevation: elevation, gain: gain}
end
    def kr(inv \\ nil, azimuth \\ 0, elevation \\ 0, gain \\ 1) do
  %UGen.PanB.Kr{in: inv, azimuth: azimuth, elevation: elevation, gain: gain}
end

  def description do
    "Ambisonic B-format panner."
  end

end
