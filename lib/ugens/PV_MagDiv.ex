defmodule PV_MagDiv do
  def new(bufferA \\ nil, bufferB \\ nil, zeroed \\ 0.0001) do
  %UGen.PV_MagDiv.New{bufferA: bufferA, bufferB: bufferB, zeroed: zeroed}
end

  def description do
    "Division of magnitudes"
  end

end
