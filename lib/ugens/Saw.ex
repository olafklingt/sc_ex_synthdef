defmodule Saw do
  def ar(freq \\ 440.0) do
  %UGen.Saw.Ar{freq: freq}
end
    def kr(freq \\ 440.0) do
  %UGen.Saw.Kr{freq: freq}
end

  def description do
    "Band limited sawtooth."
  end

end
