defmodule ModDif do
  def ar(x \\ 0.0, y \\ 0.0, mod \\ 1.0) do
  %UGen.ModDif.Ar{x: x, y: y, mod: mod}
end
    def ir(x \\ 0.0, y \\ 0.0, mod \\ 1.0) do
  %UGen.ModDif.Ir{x: x, y: y, mod: mod}
end
    def kr(x \\ 0.0, y \\ 0.0, mod \\ 1.0) do
  %UGen.ModDif.Kr{x: x, y: y, mod: mod}
end

  def description do
    "Minimum difference of two values in modulo arithmetics"
  end

end
