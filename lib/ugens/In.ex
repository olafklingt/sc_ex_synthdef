defmodule In do
  def ar(bus \\ 0, numChannels \\ 1) do
  %UGen.In.Ar{bus: bus, numChannels: numChannels}
end
    def kr(bus \\ 0, numChannels \\ 1) do
  %UGen.In.Kr{bus: bus, numChannels: numChannels}
end

  def description do
    "Read a signal from a bus."
  end

end
