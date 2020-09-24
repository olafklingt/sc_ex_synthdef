defmodule PV_BinWipe do
  def new(bufferA \\ nil, bufferB \\ nil, wipe \\ 0.0) do
  %UGen.PV_BinWipe.New{bufferA: bufferA, bufferB: bufferB, wipe: wipe}
end

  def description do
    "Combine low and high bins from two inputs."
  end

end
