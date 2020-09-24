defmodule Duty do
  def ar(dur \\ 1.0, reset \\ 0.0, level \\ 1.0, doneAction \\ 0) do
  %UGen.Duty.Ar{dur: dur, reset: reset, level: level, doneAction: doneAction}
end
    def kr(dur \\ 1.0, reset \\ 0.0, level \\ 1.0, doneAction \\ 0) do
  %UGen.Duty.Kr{dur: dur, reset: reset, level: level, doneAction: doneAction}
end

  def description do
    "Demand results from demand rate UGens."
  end

end
