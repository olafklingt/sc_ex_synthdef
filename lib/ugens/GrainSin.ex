defmodule GrainSin do
  def ar(numChannels \\ 1, trigger \\ 0, dur \\ 1, freq \\ 440, pan \\ 0, envbufnum \\ -1, maxGrains \\ 512) do
  %UGen.GrainSin.Ar{numChannels: numChannels, trigger: trigger, dur: dur, freq: freq, pan: pan, envbufnum: envbufnum, maxGrains: maxGrains}
end

  def description do
    "Granular synthesis with sine tones"
  end

end
