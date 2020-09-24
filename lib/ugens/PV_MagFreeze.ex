defmodule PV_MagFreeze do
  def new(buffer \\ nil, freeze \\ 0.0) do
  %UGen.PV_MagFreeze.New{buffer: buffer, freeze: freeze}
end

  def description do
    "Freeze magnitudes."
  end

end
