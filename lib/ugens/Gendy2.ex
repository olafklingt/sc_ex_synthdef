defmodule Gendy2 do
  def ar(ampdist \\ 1, durdist \\ 1, adparam \\ 1.0, ddparam \\ 1.0, minfreq \\ 440, maxfreq \\ 660, ampscale \\ 0.5, durscale \\ 0.5, initCPs \\ 12, knum \\ nil, a \\ 1.17, c \\ 0.31) do
  %UGen.Gendy2.Ar{ampdist: ampdist, durdist: durdist, adparam: adparam, ddparam: ddparam, minfreq: minfreq, maxfreq: maxfreq, ampscale: ampscale, durscale: durscale, initCPs: initCPs, knum: knum, a: a, c: c}
end
    def kr(ampdist \\ 1, durdist \\ 1, adparam \\ 1.0, ddparam \\ 1.0, minfreq \\ 20, maxfreq \\ 1000, ampscale \\ 0.5, durscale \\ 0.5, initCPs \\ 12, knum \\ nil, a \\ 1.17, c \\ 0.31) do
  %UGen.Gendy2.Kr{ampdist: ampdist, durdist: durdist, adparam: adparam, ddparam: ddparam, minfreq: minfreq, maxfreq: maxfreq, ampscale: ampscale, durscale: durscale, initCPs: initCPs, knum: knum, a: a, c: c}
end

end
