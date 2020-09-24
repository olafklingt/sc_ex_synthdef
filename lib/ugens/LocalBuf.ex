defmodule LocalBuf do
  def new(numFrames \\ 1, numChannels \\ 1) do
  %UGen.LocalBuf.New{numFrames: numFrames, numChannels: numChannels}
end

  def description do
    "Allocate a buffer local to the synth"
  end

end
