defmodule LinExp do
  def ar(inv \\ 0.0, srclo \\ 0.0, srchi \\ 1.0, dstlo \\ 1.0, dsthi \\ 2.0) do
  %UGen.LinExp.Ar{in: inv, srclo: srclo, srchi: srchi, dstlo: dstlo, dsthi: dsthi}
end
    def kr(inv \\ 0.0, srclo \\ 0.0, srchi \\ 1.0, dstlo \\ 1.0, dsthi \\ 2.0) do
  %UGen.LinExp.Kr{in: inv, srclo: srclo, srchi: srchi, dstlo: dstlo, dsthi: dsthi}
end

  def description do
    "Map a linear range to an exponential range"
  end

end
