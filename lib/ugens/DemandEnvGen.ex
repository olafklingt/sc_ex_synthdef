defmodule DemandEnvGen do
  def ar(level \\ nil, dur \\ nil, shape \\ 1, curve \\ 0, gate \\ 1.0, reset \\ 1.0, levelScale \\ 1.0, levelBias \\ 0.0, timeScale \\ 1.0, doneAction \\ 0) do
  %DemandEnvGen.Ar{level: level, dur: dur, shape: shape, curve: curve, gate: gate, reset: reset, levelScale: levelScale, levelBias: levelBias, timeScale: timeScale, doneAction: doneAction}
end
    def kr(level \\ nil, dur \\ nil, shape \\ 1, curve \\ 0, gate \\ 1.0, reset \\ 1.0, levelScale \\ 1.0, levelBias \\ 0.0, timeScale \\ 1.0, doneAction \\ 0) do
  %DemandEnvGen.Kr{level: level, dur: dur, shape: shape, curve: curve, gate: gate, reset: reset, levelScale: levelScale, levelBias: levelBias, timeScale: timeScale, doneAction: doneAction}
end

end