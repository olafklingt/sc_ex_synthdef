defmodule PSinGrain do
  def ar(freq \\ 440.0, dur \\ 0.2, amp \\ 0.1) do
  %UGen.PSinGrain.Ar{freq: freq, dur: dur, amp: amp}
end

  def description do
    "Very fast sine grain with a parabolic envelope"
  end

end
