defmodule XLine do
  def ar(start \\ 1.0, endv \\ 2.0, dur \\ 1.0, doneAction \\ 0) do
  %UGen.XLine.Ar{start: start, end: endv, dur: dur, doneAction: doneAction}
end
    def kr(start \\ 1.0, endv \\ 2.0, dur \\ 1.0, doneAction \\ 0) do
  %UGen.XLine.Kr{start: start, end: endv, dur: dur, doneAction: doneAction}
end

  def description do
    "Exponential line generator."
  end

end
