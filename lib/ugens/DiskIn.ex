defmodule DiskIn do
  def ar(numChannels \\ nil, bufnum \\ nil, loop \\ 0) do
  %UGen.DiskIn.Ar{numChannels: numChannels, bufnum: bufnum, loop: loop}
end

  def description do
    "Stream in audio from a file."
  end

end
