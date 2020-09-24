defmodule Dconst do
  def new(sum \\ nil, inv \\ nil, tolerance \\ 0.001) do
  %UGen.Dconst.New{sum: sum, in: inv, tolerance: tolerance}
end

  def description do
    "Constrain a demand-rate stream to a given sum"
  end

end
