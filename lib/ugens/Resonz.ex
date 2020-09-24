defmodule Resonz do
  def ar(inv \\ 0.0, freq \\ 440.0, bwr \\ 1.0) do
  %UGen.Resonz.Ar{in: inv, freq: freq, bwr: bwr}
end
    def kr(inv \\ 0.0, freq \\ 440.0, bwr \\ 1.0) do
  %UGen.Resonz.Kr{in: inv, freq: freq, bwr: bwr}
end

  def description do
    "Resonant filter."
  end

end
