defmodule COsc do
  def ar(bufnum \\ nil, freq \\ 440.0, beats \\ 0.5) do
  %UGen.COsc.Ar{bufnum: bufnum, freq: freq, beats: beats}
end
    def kr(bufnum \\ nil, freq \\ 440.0, beats \\ 0.5) do
  %UGen.COsc.Kr{bufnum: bufnum, freq: freq, beats: beats}
end

end
