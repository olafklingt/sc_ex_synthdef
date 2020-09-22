defmodule DetectSilence do
  def ar(inv \\ 0.0, amp \\ 0.0001, time \\ 0.1, doneAction \\ 0) do
  %UGen.DetectSilence.Ar{in: inv, amp: amp, time: time, doneAction: doneAction}
end
    def kr(inv \\ 0.0, amp \\ 0.0001, time \\ 0.1, doneAction \\ 0) do
  %UGen.DetectSilence.Kr{in: inv, amp: amp, time: time, doneAction: doneAction}
end

end
