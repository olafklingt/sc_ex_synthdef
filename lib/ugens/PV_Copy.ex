defmodule PV_Copy do
  def new(bufferA \\ nil, bufferB \\ nil) do
  %UGen.PV_Copy.New{bufferA: bufferA, bufferB: bufferB}
end

  def description do
    "Copy an FFT buffer"
  end

end
