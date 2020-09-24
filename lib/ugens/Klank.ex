defmodule Klank do
  def ar(specificationsArrayRef \\ nil, input \\ nil, freqscale \\ 1.0, freqoffset \\ 0.0, decayscale \\ 1.0) do
  %UGen.Klank.Ar{specificationsArrayRef: specificationsArrayRef, input: input, freqscale: freqscale, freqoffset: freqoffset, decayscale: decayscale}
end

  def description do
    "Bank of resonators"
  end

end
