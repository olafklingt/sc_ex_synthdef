defmodule XOut do
  def ar(bus \\ nil, xfade \\ nil, channelsArray \\ nil) do
  %UGen.XOut.Ar{bus: bus, xfade: xfade, channelsArray: channelsArray}
end
    def kr(bus \\ nil, xfade \\ nil, channelsArray \\ nil) do
  %UGen.XOut.Kr{bus: bus, xfade: xfade, channelsArray: channelsArray}
end

  def description do
    "Send signal to a bus, crossfading with previous contents."
  end

end
