defmodule PanAz do
  def ar(numChans \\ nil, inv \\ nil, pos \\ 0.0, level \\ 1.0, width \\ 2.0, orientation \\ 0.5) do
  %UGen.PanAz.Ar{numChans: numChans, in: inv, pos: pos, level: level, width: width, orientation: orientation}
end
    def kr(numChans \\ nil, inv \\ nil, pos \\ 0.0, level \\ 1.0, width \\ 2.0, orientation \\ 0.5) do
  %UGen.PanAz.Kr{numChans: numChans, in: inv, pos: pos, level: level, width: width, orientation: orientation}
end

  def description do
    "Azimuth panner"
  end

end
