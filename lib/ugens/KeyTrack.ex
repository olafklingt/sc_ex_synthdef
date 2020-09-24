defmodule KeyTrack do
  def kr(chain \\ nil, keydecay \\ 2.0, chromaleak \\ 0.5) do
  %UGen.KeyTrack.Kr{chain: chain, keydecay: keydecay, chromaleak: chromaleak}
end

  def description do
    "Key tracker"
  end

end
