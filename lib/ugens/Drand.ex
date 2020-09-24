defmodule Drand do
  def new(list \\ nil, repeats \\ 1) do
  %UGen.Drand.New{list: list, repeats: repeats}
end

  def description do
    "Demand rate random sequence generator."
  end

end
