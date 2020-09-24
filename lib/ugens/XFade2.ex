defmodule XFade2 do
  def ar(inA \\ nil, inB \\ 0.0, pan \\ 0.0, level \\ 1.0) do
  %UGen.XFade2.Ar{inA: inA, inB: inB, pan: pan, level: level}
end
    def kr(inA \\ nil, inB \\ 0.0, pan \\ 0.0, level \\ 1.0) do
  %UGen.XFade2.Kr{inA: inA, inB: inB, pan: pan, level: level}
end

  def description do
    "Equal power two channel cross fade."
  end

end
