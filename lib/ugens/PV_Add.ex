defmodule PV_Add do
  def new(bufferA \\ nil, bufferB \\ nil) do
  %UGen.PV_Add.New{bufferA: bufferA, bufferB: bufferB}
end

  def description do
    "Complex addition."
  end

end
