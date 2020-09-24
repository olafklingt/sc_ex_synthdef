defmodule PV_Conj do
  def new(buffer \\ nil) do
  %UGen.PV_Conj.New{buffer: buffer}
end

  def description do
    "Complex conjugate"
  end

end
