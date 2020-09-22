defmodule TDelay do
  def ar(inv \\ 0.0, dur \\ 0.1) do
  %UGen.TDelay.Ar{in: inv, dur: dur}
end
    def kr(inv \\ 0.0, dur \\ 0.1) do
  %UGen.TDelay.Kr{in: inv, dur: dur}
end

end
