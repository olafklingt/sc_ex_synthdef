defmodule PV_Mul do
  def new(bufferA \\ nil, bufferB \\ nil) do
  %UGen.PV_Mul.New{bufferA: bufferA, bufferB: bufferB}
end

  def description do
    "Complex multiply."
  end

end
