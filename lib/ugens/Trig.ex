defmodule Trig do
  def ar(inv \\ 0.0, dur \\ 0.1) do
  %UGen.Trig.Ar{in: inv, dur: dur}
end
    def kr(inv \\ 0.0, dur \\ 0.1) do
  %UGen.Trig.Kr{in: inv, dur: dur}
end

  def description do
    "Timed trigger."
  end

end
