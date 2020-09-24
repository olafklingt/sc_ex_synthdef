defmodule VDiskIn do
  def ar(numChannels \\ nil, bufnum \\ nil, rate \\ 1, loop \\ 0, sendID \\ 0) do
  %UGen.VDiskIn.Ar{numChannels: numChannels, bufnum: bufnum, rate: rate, loop: loop, sendID: sendID}
end

  def description do
    "Stream in audio from a file, with variable rate"
  end

end
