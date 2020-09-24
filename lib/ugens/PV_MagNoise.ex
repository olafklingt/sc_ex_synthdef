defmodule PV_MagNoise do
  def new(buffer \\ nil) do
  %UGen.PV_MagNoise.New{buffer: buffer}
end

  def description do
    "Multiply magnitudes by noise."
  end

end
