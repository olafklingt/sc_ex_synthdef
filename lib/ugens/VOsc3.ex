defmodule VOsc3 do
  def ar(bufpos \\ nil, freq1 \\ 110.0, freq2 \\ 220.0, freq3 \\ 440.0) do
  %UGen.VOsc3.Ar{bufpos: bufpos, freq1: freq1, freq2: freq2, freq3: freq3}
end
    def kr(bufpos \\ nil, freq1 \\ 110.0, freq2 \\ 220.0, freq3 \\ 440.0) do
  %UGen.VOsc3.Kr{bufpos: bufpos, freq1: freq1, freq2: freq2, freq3: freq3}
end

end
