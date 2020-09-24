defmodule PlayBuf do
  def ar(numChannels \\ nil, bufnum \\ 0, rate \\ 1.0, trigger \\ 1.0, startPos \\ 0.0, loop \\ 0.0, doneAction \\ 0) do
  %UGen.PlayBuf.Ar{numChannels: numChannels, bufnum: bufnum, rate: rate, trigger: trigger, startPos: startPos, loop: loop, doneAction: doneAction}
end
    def kr(numChannels \\ nil, bufnum \\ 0, rate \\ 1.0, trigger \\ 1.0, startPos \\ 0.0, loop \\ 0.0, doneAction \\ 0) do
  %UGen.PlayBuf.Kr{numChannels: numChannels, bufnum: bufnum, rate: rate, trigger: trigger, startPos: startPos, loop: loop, doneAction: doneAction}
end

  def description do
    "Sample playback oscillator."
  end

end
