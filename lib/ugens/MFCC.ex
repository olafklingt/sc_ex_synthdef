defmodule MFCC do
  def kr(chain \\ nil, numcoeff \\ 13) do
  %UGen.MFCC.Kr{chain: chain, numcoeff: numcoeff}
end

  def description do
    "Mel frequency cepstral coefficients"
  end

end
