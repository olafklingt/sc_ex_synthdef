defmodule Integrator do
  def ar(inv \\ 0.0, coef \\ 1.0) do
  %UGen.Integrator.Ar{in: inv, coef: coef}
end
    def kr(inv \\ 0.0, coef \\ 1.0) do
  %UGen.Integrator.Kr{in: inv, coef: coef}
end

  def description do
    "A leaky integrator."
  end

end
