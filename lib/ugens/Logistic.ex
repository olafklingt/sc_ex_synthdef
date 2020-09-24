defmodule Logistic do
  def ar(chaosParam \\ 3.0, freq \\ 1.0e3, init \\ 0.5) do
  %UGen.Logistic.Ar{chaosParam: chaosParam, freq: freq, init: init}
end
    def kr(chaosParam \\ 3.0, freq \\ 1.0e3, init \\ 0.5) do
  %UGen.Logistic.Kr{chaosParam: chaosParam, freq: freq, init: init}
end

  def description do
    "Chaotic noise function"
  end

end
