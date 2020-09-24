defmodule AmpCompA do
  def ar(freq \\ 1000, root \\ 0, minAmp \\ 0.32, rootAmp \\ 1.0) do
  %UGen.AmpCompA.Ar{freq: freq, root: root, minAmp: minAmp, rootAmp: rootAmp}
end
    def ir(freq \\ 1000, root \\ 0, minAmp \\ 0.32, rootAmp \\ 1.0) do
  %UGen.AmpCompA.Ir{freq: freq, root: root, minAmp: minAmp, rootAmp: rootAmp}
end
    def kr(freq \\ 1000, root \\ 0, minAmp \\ 0.32, rootAmp \\ 1.0) do
  %UGen.AmpCompA.Kr{freq: freq, root: root, minAmp: minAmp, rootAmp: rootAmp}
end

  def description do
    "Basic psychoacoustic amplitude compensation (ANSI A-weighting curve)."
  end

end
