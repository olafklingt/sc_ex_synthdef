defmodule InRect do
  def ar(x \\ 0.0, y \\ 0.0, rect \\ nil) do
  %UGen.InRect.Ar{x: x, y: y, rect: rect}
end
    def kr(x \\ 0.0, y \\ 0.0, rect \\ nil) do
  %UGen.InRect.Kr{x: x, y: y, rect: rect}
end

  def description do
    "Test if a point is within a given rectangle."
  end

end
