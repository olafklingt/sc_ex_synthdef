defmodule InFeedback do
  def ar(bus \\ 0, numChannels \\ 1) do
  %UGen.InFeedback.Ar{bus: bus, numChannels: numChannels}
end

  def description do
    "Read signal from a bus with a current or one cycle old timestamp."
  end

end
