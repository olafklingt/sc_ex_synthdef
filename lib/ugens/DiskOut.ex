defmodule DiskOut do
  def ar(bufnum \\ nil, channelsArray \\ nil) do
  %UGen.DiskOut.Ar{bufnum: bufnum, channelsArray: channelsArray}
end

  def description do
    "Record to a soundfile to disk."
  end

end
