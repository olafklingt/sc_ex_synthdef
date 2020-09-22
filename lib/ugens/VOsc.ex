defmodule VOsc do
  def ar(bufpos \\ nil, freq \\ 440.0, phase \\ 0.0) do
  %UGen.VOsc.Ar{bufpos: bufpos, freq: freq, phase: phase}
end
    def kr(bufpos \\ nil, freq \\ 440.0, phase \\ 0.0) do
  %UGen.VOsc.Kr{bufpos: bufpos, freq: freq, phase: phase}
end

end
