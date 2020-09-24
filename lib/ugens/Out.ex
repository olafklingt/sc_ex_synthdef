defmodule Out do
  def ar(bus \\ nil, channelsArray \\ nil) do
  %UGen.Out.Ar{bus: bus, channelsArray: channelsArray}
end
    def kr(bus \\ nil, channelsArray \\ nil) do
  %UGen.Out.Kr{bus: bus, channelsArray: channelsArray}
end

  def description do
    "Write a signal to a bus."
  end

end
