defmodule PV_RectComb2 do
  def new(bufferA \\ nil, bufferB \\ nil, numTeeth \\ 0.0, phase \\ 0.0, width \\ 0.5) do
  %UGen.PV_RectComb2.New{bufferA: bufferA, bufferB: bufferB, numTeeth: numTeeth, phase: phase, width: width}
end

  def description do
    "Make gaps in spectrum."
  end

end
