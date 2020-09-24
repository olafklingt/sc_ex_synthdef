defmodule PV_Min do
  def new(bufferA \\ nil, bufferB \\ nil) do
  %UGen.PV_Min.New{bufferA: bufferA, bufferB: bufferB}
end

  def description do
    "Minimum magnitude."
  end

end
