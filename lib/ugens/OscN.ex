defmodule OscN do
  def ar(bufnum \\ nil, freq \\ 440.0, phase \\ 0.0) do
  %UGen.OscN.Ar{bufnum: bufnum, freq: freq, phase: phase}
end
    def kr(bufnum \\ nil, freq \\ 440.0, phase \\ 0.0) do
  %UGen.OscN.Kr{bufnum: bufnum, freq: freq, phase: phase}
end

end
