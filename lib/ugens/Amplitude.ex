defmodule Amplitude do
  def ar(inv \\ 0.0, attackTime \\ 0.01, releaseTime \\ 0.01) do
  %UGen.Amplitude.Ar{in: inv, attackTime: attackTime, releaseTime: releaseTime}
end
    def kr(inv \\ 0.0, attackTime \\ 0.01, releaseTime \\ 0.01) do
  %UGen.Amplitude.Kr{in: inv, attackTime: attackTime, releaseTime: releaseTime}
end

  def description do
    "Amplitude follower"
  end

end
