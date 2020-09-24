defmodule InTrig do
  def kr(bus \\ 0, numChannels \\ 1) do
  %UGen.InTrig.Kr{bus: bus, numChannels: numChannels}
end

  def description do
    "Generate a trigger anytime a bus is set."
  end

end
