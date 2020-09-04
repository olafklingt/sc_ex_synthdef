defmodule AmpCompA do
  def ar(freq \\ 1000, root \\ 0, minAmp \\ 0.32, rootAmp \\ 1.0) do
  %AmpCompA.Ar{freq: freq, root: root, minAmp: minAmp, rootAmp: rootAmp}
end
    def ir(freq \\ 1000, root \\ 0, minAmp \\ 0.32, rootAmp \\ 1.0) do
  %AmpCompA.Ir{freq: freq, root: root, minAmp: minAmp, rootAmp: rootAmp}
end
    def kr(freq \\ 1000, root \\ 0, minAmp \\ 0.32, rootAmp \\ 1.0) do
  %AmpCompA.Kr{freq: freq, root: root, minAmp: minAmp, rootAmp: rootAmp}
end

end
