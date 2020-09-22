defmodule Osc do
  def ar(bufnum \\ nil, freq \\ 440.0, phase \\ 0.0) do
  %UGen.Osc.Ar{bufnum: bufnum, freq: freq, phase: phase}
end
    def kr(bufnum \\ nil, freq \\ 440.0, phase \\ 0.0) do
  %UGen.Osc.Kr{bufnum: bufnum, freq: freq, phase: phase}
end

end
