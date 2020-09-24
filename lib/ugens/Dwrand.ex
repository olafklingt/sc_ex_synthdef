defmodule Dwrand do
  def new(list \\ nil, weights \\ nil, repeats \\ 1) do
  %UGen.Dwrand.New{list: list, weights: weights, repeats: repeats}
end

  def description do
    "Demand rate weighted random sequence generator"
  end

end
