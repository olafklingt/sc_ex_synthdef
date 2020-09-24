defmodule MidEQ do
  def ar(inv \\ 0.0, freq \\ 440.0, rq \\ 1.0, db \\ 0.0) do
  %UGen.MidEQ.Ar{in: inv, freq: freq, rq: rq, db: db}
end
    def kr(inv \\ 0.0, freq \\ 440.0, rq \\ 1.0, db \\ 0.0) do
  %UGen.MidEQ.Kr{in: inv, freq: freq, rq: rq, db: db}
end

  def description do
    "Parametric filter."
  end

end
