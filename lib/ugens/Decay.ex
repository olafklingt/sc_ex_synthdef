defmodule Decay do
  def ar(inv \\ 0.0, decayTime \\ 1.0) do
  %UGen.Decay.Ar{in: inv, decayTime: decayTime}
end
    def kr(inv \\ 0.0, decayTime \\ 1.0) do
  %UGen.Decay.Kr{in: inv, decayTime: decayTime}
end

  def description do
    "Exponential decay"
  end

end
