defmodule Lag do
  def ar(inv \\ 0.0, lagTime \\ 0.1) do
  %UGen.Lag.Ar{in: inv, lagTime: lagTime}
end
    def kr(inv \\ 0.0, lagTime \\ 0.1) do
  %UGen.Lag.Kr{in: inv, lagTime: lagTime}
end

  def description do
    "Exponential lag"
  end

end
