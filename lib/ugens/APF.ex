defmodule APF do
  def ar(inv \\ 0.0, freq \\ 440.0, radius \\ 0.8) do
  %UGen.APF.Ar{in: inv, freq: freq, radius: radius}
end
    def kr(inv \\ 0.0, freq \\ 440.0, radius \\ 0.8) do
  %UGen.APF.Kr{in: inv, freq: freq, radius: radius}
end

  def description do
    "FIXME: APF purpose."
  end

end
