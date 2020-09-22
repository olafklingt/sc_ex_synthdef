defmodule LPF do
  def ar(inv \\ 0.0, freq \\ 440.0) do
  %UGen.LPF.Ar{in: inv, freq: freq}
end
    def kr(inv \\ 0.0, freq \\ 440.0) do
  %UGen.LPF.Kr{in: inv, freq: freq}
end

end
