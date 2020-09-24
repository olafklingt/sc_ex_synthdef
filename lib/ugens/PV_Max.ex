defmodule PV_Max do
  def new(bufferA \\ nil, bufferB \\ nil) do
  %UGen.PV_Max.New{bufferA: bufferA, bufferB: bufferB}
end

  def description do
    "Maximum magnitude."
  end

end
