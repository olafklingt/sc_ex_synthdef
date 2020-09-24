defmodule AmpComp do
  def ar(freq \\ nil, root \\ nil, exp \\ 0.3333) do
  %UGen.AmpComp.Ar{freq: freq, root: root, exp: exp}
end
    def ir(freq \\ nil, root \\ nil, exp \\ 0.3333) do
  %UGen.AmpComp.Ir{freq: freq, root: root, exp: exp}
end
    def kr(freq \\ nil, root \\ nil, exp \\ 0.3333) do
  %UGen.AmpComp.Kr{freq: freq, root: root, exp: exp}
end

  def description do
    "Basic psychoacoustic amplitude compensation."
  end

end
