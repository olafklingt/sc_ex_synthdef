defmodule BLowPass do
  def ar(inv \\ nil, freq \\ 1.2e3, rq \\ 1.0) do
  %UGen.BLowPass.Ar{in: inv, freq: freq, rq: rq}
end

  def description do
    "12db/oct rolloff - 2nd order resonant Low Pass Filter"
  end

end
