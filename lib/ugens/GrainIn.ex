defmodule GrainIn do
  def ar(numChannels \\ 1, trigger \\ 0, dur \\ 1, inv \\ nil, pan \\ 0, envbufnum \\ -1, maxGrains \\ 512) do
  %UGen.GrainIn.Ar{numChannels: numChannels, trigger: trigger, dur: dur, in: inv, pan: pan, envbufnum: envbufnum, maxGrains: maxGrains}
end

  def description do
    "Granulate an input signal"
  end

end
