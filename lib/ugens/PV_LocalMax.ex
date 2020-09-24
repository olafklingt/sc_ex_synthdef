defmodule PV_LocalMax do
  def new(buffer \\ nil, threshold \\ 0.0) do
  %UGen.PV_LocalMax.New{buffer: buffer, threshold: threshold}
end

  def description do
    "Pass bins which are a local maximum."
  end

end
