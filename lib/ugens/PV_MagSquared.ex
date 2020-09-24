defmodule PV_MagSquared do
  def new(buffer \\ nil) do
  %UGen.PV_MagSquared.New{buffer: buffer}
end

  def description do
    "Square magnitudes."
  end

end
