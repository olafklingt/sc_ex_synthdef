defmodule Peak do
  def ar(inv \\ 0.0, trig \\ 0.0) do
  %UGen.Peak.Ar{in: inv, trig: trig}
end
    def kr(inv \\ 0.0, trig \\ 0.0) do
  %UGen.Peak.Kr{in: inv, trig: trig}
end

  def description do
    "Track peak signal amplitude."
  end

end
