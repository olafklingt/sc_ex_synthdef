defmodule Dswitch do
  def new(list \\ nil, index \\ nil) do
  %UGen.Dswitch.New{list: list, index: index}
end

  def description do
    "Demand rate generator for embedding different inputs"
  end

end
