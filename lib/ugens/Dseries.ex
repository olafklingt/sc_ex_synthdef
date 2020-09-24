defmodule Dseries do
  def new(start \\ 1, step \\ 1, length \\ nil) do
  %UGen.Dseries.New{start: start, step: step, length: length}
end

  def description do
    "Demand rate arithmetic series UGen."
  end

end
