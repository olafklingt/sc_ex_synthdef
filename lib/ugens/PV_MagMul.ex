defmodule PV_MagMul do
  def new(bufferA \\ nil, bufferB \\ nil) do
  %UGen.PV_MagMul.New{bufferA: bufferA, bufferB: bufferB}
end

  def description do
    "Multiply magnitudes."
  end

end
