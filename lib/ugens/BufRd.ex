defmodule BufRd do
  def ar(numChannels \\ nil, bufnum \\ 0, phase \\ 0.0, loop \\ 1.0, interpolation \\ 2) do
  %UGen.BufRd.Ar{numChannels: numChannels, bufnum: bufnum, phase: phase, loop: loop, interpolation: interpolation}
end
    def kr(numChannels \\ nil, bufnum \\ 0, phase \\ 0.0, loop \\ 1.0, interpolation \\ 2) do
  %UGen.BufRd.Kr{numChannels: numChannels, bufnum: bufnum, phase: phase, loop: loop, interpolation: interpolation}
end

  def description do
    "Buffer reading oscillator."
  end

end
