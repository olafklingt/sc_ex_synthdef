defmodule PV_Diffuser do
  def new(buffer \\ nil, trig \\ 0.0) do
  %UGen.PV_Diffuser.New{buffer: buffer, trig: trig}
end

  def description do
    "Random phase shifting."
  end

end
