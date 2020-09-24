defmodule EnvGen do
  def ar(envelope \\ nil, gate \\ 1.0, levelScale \\ 1.0, levelBias \\ 0.0, timeScale \\ 1.0, doneAction \\ 0) do
  %UGen.EnvGen.Ar{envelope: envelope, gate: gate, levelScale: levelScale, levelBias: levelBias, timeScale: timeScale, doneAction: doneAction}
end
    def kr(envelope \\ nil, gate \\ 1.0, levelScale \\ 1.0, levelBias \\ 0.0, timeScale \\ 1.0, doneAction \\ 0) do
  %UGen.EnvGen.Kr{envelope: envelope, gate: gate, levelScale: levelScale, levelBias: levelBias, timeScale: timeScale, doneAction: doneAction}
end

  def description do
    "Envelope generator"
  end

end
