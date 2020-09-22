defmodule LocalOut do
  def ar(channelsArray \\ nil) do
  %UGen.LocalOut.Ar{channelsArray: channelsArray}
end
    def kr(channelsArray \\ nil) do
  %UGen.LocalOut.Kr{channelsArray: channelsArray}
end

end
