defmodule OnePole do
  def ar(inv \\ 0.0, coef \\ 0.5) do
  %UGen.OnePole.Ar{in: inv, coef: coef}
end
    def kr(inv \\ 0.0, coef \\ 0.5) do
  %UGen.OnePole.Kr{in: inv, coef: coef}
end

  def description do
    "One pole filter."
  end

end
