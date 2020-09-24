defmodule Loudness do
  def kr(chain \\ nil, smask \\ 0.25, tmask \\ 1) do
  %UGen.Loudness.Kr{chain: chain, smask: smask, tmask: tmask}
end

  def description do
    "Extraction of instantaneous loudness in sones"
  end

end
