defmodule Blip do
  def ar(freq \\ 440.0, numharm \\ 200.0) do
  %UGen.Blip.Ar{freq: freq, numharm: numharm}
end
    def kr(freq \\ 440.0, numharm \\ 200.0) do
  %UGen.Blip.Kr{freq: freq, numharm: numharm}
end

  def description do
    "Band limited impulse oscillator."
  end

end
