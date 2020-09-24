defmodule DecodeB2 do
  def ar(numChans \\ nil, w \\ nil, x \\ nil, y \\ nil, orientation \\ 0.5) do
  %UGen.DecodeB2.Ar{numChans: numChans, w: w, x: x, y: y, orientation: orientation}
end
    def kr(numChans \\ nil, w \\ nil, x \\ nil, y \\ nil, orientation \\ 0.5) do
  %UGen.DecodeB2.Kr{numChans: numChans, w: w, x: x, y: y, orientation: orientation}
end

  def description do
    "2D Ambisonic B-format decoder."
  end

end
