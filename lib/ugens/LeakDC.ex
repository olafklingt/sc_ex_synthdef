defmodule LeakDC do
  def ar(inv \\ 0.0, coef \\ 0.995) do
  %UGen.LeakDC.Ar{in: inv, coef: coef}
end
    def kr(inv \\ 0.0, coef \\ 0.9) do
  %UGen.LeakDC.Kr{in: inv, coef: coef}
end

end
