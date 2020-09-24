defmodule LinCongC do
  def ar(freq \\ 22050, a \\ 1.1, c \\ 0.13, m \\ 1.0, xi \\ 0) do
  %UGen.LinCongC.Ar{freq: freq, a: a, c: c, m: m, xi: xi}
end

  def description do
    "Linear congruential chaotic generator"
  end

end
