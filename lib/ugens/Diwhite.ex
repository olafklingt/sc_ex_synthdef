defmodule Diwhite do
  def new(lo \\ 0.0, hi \\ 1.0, length \\ nil) do
  %UGen.Diwhite.New{lo: lo, hi: hi, length: length}
end

  def description do
    "Demand rate white noise random generator."
  end

end
