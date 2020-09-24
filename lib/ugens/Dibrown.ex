defmodule Dibrown do
  def new(lo \\ 0.0, hi \\ 1.0, step \\ 0.01, length \\ nil) do
  %UGen.Dibrown.New{lo: lo, hi: hi, step: step, length: length}
end

  def description do
    "Demand rate brownian movement generator."
  end

end
