defmodule LFGauss do
  def ar(duration \\ 1, width \\ 0.1, iphase \\ 0.0, loop \\ 1, doneAction \\ 0) do
  %UGen.LFGauss.Ar{duration: duration, width: width, iphase: iphase, loop: loop, doneAction: doneAction}
end
    def kr(duration \\ 1, width \\ 0.1, iphase \\ 0.0, loop \\ 1, doneAction \\ 0) do
  %UGen.LFGauss.Kr{duration: duration, width: width, iphase: iphase, loop: loop, doneAction: doneAction}
end

  def description do
    "Gaussian function oscillator"
  end

end
