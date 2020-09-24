defmodule RandSeed do
  def ar(trig \\ 0.0, seed \\ 56789) do
  %UGen.RandSeed.Ar{trig: trig, seed: seed}
end
    def ir(trig \\ 0.0, seed \\ 56789) do
  %UGen.RandSeed.Ir{trig: trig, seed: seed}
end
    def kr(trig \\ 0.0, seed \\ 56789) do
  %UGen.RandSeed.Kr{trig: trig, seed: seed}
end

  def description do
    "Sets the synth's random generator seed."
  end

end
