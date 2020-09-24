defmodule ToggleFF do
  def ar(trig \\ 0.0) do
  %UGen.ToggleFF.Ar{trig: trig}
end
    def kr(trig \\ 0.0) do
  %UGen.ToggleFF.Kr{trig: trig}
end

  def description do
    "Toggle flip flop."
  end

end
