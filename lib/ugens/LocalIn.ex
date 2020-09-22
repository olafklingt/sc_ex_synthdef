defmodule LocalIn do
  def ar(numChannels \\ 1, default \\ 0.0) do
  %UGen.LocalIn.Ar{numChannels: numChannels, default: default}
end
    def kr(numChannels \\ 1, default \\ 0.0) do
  %UGen.LocalIn.Kr{numChannels: numChannels, default: default}
end

end
