defmodule Stepper do
  def ar(trig \\ 0, reset \\ 0, min \\ 0, max \\ 7, step \\ 1, resetval \\ nil) do
  %UGen.Stepper.Ar{trig: trig, reset: reset, min: min, max: max, step: step, resetval: resetval}
end
    def kr(trig \\ 0, reset \\ 0, min \\ 0, max \\ 7, step \\ 1, resetval \\ nil) do
  %UGen.Stepper.Kr{trig: trig, reset: reset, min: min, max: max, step: step, resetval: resetval}
end

  def description do
    "Pulse counter."
  end

end
