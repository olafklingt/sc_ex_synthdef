defmodule ReplaceOut do
  def ar(bus \\ nil, channelsArray \\ nil) do
  %UGen.ReplaceOut.Ar{bus: bus, channelsArray: channelsArray}
end
    def kr(bus \\ nil, channelsArray \\ nil) do
  %UGen.ReplaceOut.Kr{bus: bus, channelsArray: channelsArray}
end

end
