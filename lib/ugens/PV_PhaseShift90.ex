defmodule PV_PhaseShift90 do
  def new(buffer \\ nil) do
  %UGen.PV_PhaseShift90.New{buffer: buffer}
end

  def description do
    "Shift phase by 90 degrees."
  end

end
