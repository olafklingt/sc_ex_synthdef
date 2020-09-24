defmodule Dswitch1 do
  def new(list \\ nil, index \\ nil) do
  %UGen.Dswitch1.New{list: list, index: index}
end

  def description do
    "Demand rate generator for switching between inputs."
  end

end
