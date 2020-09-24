defmodule LagUD do
  def ar(inv \\ 0.0, lagTimeU \\ 0.1, lagTimeD \\ 0.1) do
  %UGen.LagUD.Ar{in: inv, lagTimeU: lagTimeU, lagTimeD: lagTimeD}
end
    def kr(inv \\ 0.0, lagTimeU \\ 0.1, lagTimeD \\ 0.1) do
  %UGen.LagUD.Kr{in: inv, lagTimeU: lagTimeU, lagTimeD: lagTimeD}
end

  def description do
    "Exponential lag"
  end

end
