defmodule Dstutter do
  def new(n \\ nil, inv \\ nil) do
  %UGen.Dstutter.New{n: n, in: inv}
end

  def description do
    "Demand rate input replicator"
  end

end
