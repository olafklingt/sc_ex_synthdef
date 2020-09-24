defmodule LagIn do
  def kr(bus \\ 0, numChannels \\ 1, lag \\ 0.1) do
  %UGen.LagIn.Kr{bus: bus, numChannels: numChannels, lag: lag}
end

  def description do
    "Read a control signal from a bus with a lag"
  end

end
