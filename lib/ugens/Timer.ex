defmodule Timer do
  def ar(trig \\ 0.0) do
  %UGen.Timer.Ar{trig: trig}
end
    def kr(trig \\ 0.0) do
  %UGen.Timer.Kr{trig: trig}
end

  def description do
    "Returns time since last triggered."
  end

end
