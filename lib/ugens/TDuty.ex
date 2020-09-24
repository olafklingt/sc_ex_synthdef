defmodule TDuty do
  def ar(dur \\ 1.0, reset \\ 0.0, level \\ 1.0, doneAction \\ 0, gapFirst \\ 0) do
  %UGen.TDuty.Ar{dur: dur, reset: reset, level: level, doneAction: doneAction, gapFirst: gapFirst}
end
    def kr(dur \\ 1.0, reset \\ 0.0, level \\ 1.0, doneAction \\ 0, gapFirst \\ 0) do
  %UGen.TDuty.Kr{dur: dur, reset: reset, level: level, doneAction: doneAction, gapFirst: gapFirst}
end

  def description do
    "Demand results as trigger from demand rate UGens."
  end

end
