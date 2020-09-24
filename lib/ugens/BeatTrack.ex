defmodule BeatTrack do
  def kr(chain \\ nil, lock \\ 0) do
  %UGen.BeatTrack.Kr{chain: chain, lock: lock}
end

  def description do
    "Autocorrelation beat tracker"
  end

end
