defmodule PitchShift do
  def ar(inv \\ 0.0, windowSize \\ 0.2, pitchRatio \\ 1.0, pitchDispersion \\ 0.0, timeDispersion \\ 0.0) do
  %UGen.PitchShift.Ar{in: inv, windowSize: windowSize, pitchRatio: pitchRatio, pitchDispersion: pitchDispersion, timeDispersion: timeDispersion}
end

  def description do
    "Time domain pitch shifter."
  end

end
