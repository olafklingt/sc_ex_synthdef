defmodule BHiPass do
  def ar(inv \\ nil, freq \\ 1.2e3, rq \\ 1.0) do
  %UGen.BHiPass.Ar{in: inv, freq: freq, rq: rq}
end

  def description do
    "12db/oct rolloff - 2nd order resonant  Hi Pass Filter"
  end

end
