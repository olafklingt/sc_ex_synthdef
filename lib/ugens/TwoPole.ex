defmodule TwoPole do
  def ar(inv \\ 0.0, freq \\ 440.0, radius \\ 0.8) do
  %UGen.TwoPole.Ar{in: inv, freq: freq, radius: radius}
end
    def kr(inv \\ 0.0, freq \\ 440.0, radius \\ 0.8) do
  %UGen.TwoPole.Kr{in: inv, freq: freq, radius: radius}
end

  def description do
    "Two pole filter."
  end

end
