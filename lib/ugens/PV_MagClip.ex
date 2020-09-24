defmodule PV_MagClip do
  def new(buffer \\ nil, threshold \\ 0.0) do
  %UGen.PV_MagClip.New{buffer: buffer, threshold: threshold}
end

  def description do
    "Clip bins to a threshold."
  end

end
