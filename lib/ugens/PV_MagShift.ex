defmodule PV_MagShift do
  def new(buffer \\ nil, stretch \\ 1.0, shift \\ 0.0) do
  %UGen.PV_MagShift.New{buffer: buffer, stretch: stretch, shift: shift}
end

  def description do
    "shift and stretch magnitude bin position."
  end

end
