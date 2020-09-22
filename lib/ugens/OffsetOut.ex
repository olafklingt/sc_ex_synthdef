defmodule OffsetOut do
  def ar(bus \\ nil, channelsArray \\ nil) do
  %UGen.OffsetOut.Ar{bus: bus, channelsArray: channelsArray}
end
    def kr() do
  %UGen.OffsetOut.Kr{}
end

end
