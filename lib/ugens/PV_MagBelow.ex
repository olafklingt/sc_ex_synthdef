defmodule PV_MagBelow do
  def new(buffer \\ nil, threshold \\ 0.0) do
  %UGen.PV_MagBelow.New{buffer: buffer, threshold: threshold}
end

  def description do
    "Pass bins below a threshold."
  end

end
