defmodule HPF do
  def ar(inv \\ 0.0, freq \\ 440.0) do
  %UGen.HPF.Ar{in: inv, freq: freq}
end
    def kr(inv \\ 0.0, freq \\ 440.0) do
  %UGen.HPF.Kr{in: inv, freq: freq}
end

  def description do
    "2nd order Butterworth highpass filter."
  end

end
