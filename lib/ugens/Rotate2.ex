defmodule Rotate2 do
  def ar(x \\ nil, y \\ nil, pos \\ 0.0) do
  %UGen.Rotate2.Ar{x: x, y: y, pos: pos}
end
    def kr(x \\ nil, y \\ nil, pos \\ 0.0) do
  %UGen.Rotate2.Kr{x: x, y: y, pos: pos}
end

  def description do
    "Rotate a sound field."
  end

end
