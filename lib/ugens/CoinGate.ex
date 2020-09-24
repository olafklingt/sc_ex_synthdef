defmodule CoinGate do
  def ar(prob \\ nil, inv \\ nil) do
  %UGen.CoinGate.Ar{prob: prob, in: inv}
end
    def kr(prob \\ nil, inv \\ nil) do
  %UGen.CoinGate.Kr{prob: prob, in: inv}
end

  def description do
    "Statistical gate."
  end

end
