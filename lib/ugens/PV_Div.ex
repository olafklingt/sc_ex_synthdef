defmodule PV_Div do
  def new(bufferA \\ nil, bufferB \\ nil) do
  %UGen.PV_Div.New{bufferA: bufferA, bufferB: bufferB}
end

  def description do
    "Complex division"
  end

end
