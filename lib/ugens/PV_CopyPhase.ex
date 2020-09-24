defmodule PV_CopyPhase do
  def new(bufferA \\ nil, bufferB \\ nil) do
  %UGen.PV_CopyPhase.New{bufferA: bufferA, bufferB: bufferB}
end

  def description do
    "Copy magnitudes and phases."
  end

end
