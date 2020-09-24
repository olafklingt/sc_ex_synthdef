defmodule PV_MagAbove do
  def new(buffer \\ nil, threshold \\ 0.0) do
  %UGen.PV_MagAbove.New{buffer: buffer, threshold: threshold}
end

  def description do
    "Pass bins above a threshold."
  end

end
