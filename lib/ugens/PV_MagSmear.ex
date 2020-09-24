defmodule PV_MagSmear do
  def new(buffer \\ nil, bins \\ 0.0) do
  %UGen.PV_MagSmear.New{buffer: buffer, bins: bins}
end

  def description do
    "Average magnitudes across bins."
  end

end
