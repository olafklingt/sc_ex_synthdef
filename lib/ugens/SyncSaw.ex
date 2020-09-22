defmodule SyncSaw do
  def ar(syncFreq \\ 440.0, sawFreq \\ 440.0) do
  %UGen.SyncSaw.Ar{syncFreq: syncFreq, sawFreq: sawFreq}
end
    def kr(syncFreq \\ 440.0, sawFreq \\ 440.0) do
  %UGen.SyncSaw.Kr{syncFreq: syncFreq, sawFreq: sawFreq}
end

end
