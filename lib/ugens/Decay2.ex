defmodule Decay2 do
  def ar(inv \\ 0.0, attackTime \\ 0.01, decayTime \\ 1.0) do
  %UGen.Decay2.Ar{in: inv, attackTime: attackTime, decayTime: decayTime}
end
    def kr(inv \\ 0.0, attackTime \\ 0.01, decayTime \\ 1.0) do
  %UGen.Decay2.Kr{in: inv, attackTime: attackTime, decayTime: decayTime}
end

  def description do
    "Exponential decay"
  end

end
