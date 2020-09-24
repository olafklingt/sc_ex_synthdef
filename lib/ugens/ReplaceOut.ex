defmodule ReplaceOut do
  def ar(bus \\ nil, channelsArray \\ nil) do
  %UGen.ReplaceOut.Ar{bus: bus, channelsArray: channelsArray}
end
    def kr(bus \\ nil, channelsArray \\ nil) do
  %UGen.ReplaceOut.Kr{bus: bus, channelsArray: channelsArray}
end

  def description do
    "Send signal to a bus, overwriting previous contents."
  end

end
