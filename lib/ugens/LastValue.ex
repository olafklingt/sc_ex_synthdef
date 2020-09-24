defmodule LastValue do
  def ar(inv \\ 0.0, diff \\ 0.01) do
  %UGen.LastValue.Ar{in: inv, diff: diff}
end
    def kr(inv \\ 0.0, diff \\ 0.01) do
  %UGen.LastValue.Kr{in: inv, diff: diff}
end

  def description do
    "Output the last value before the input changed"
  end

end
