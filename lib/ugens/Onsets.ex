defmodule Onsets do
  def kr(chain \\ nil, threshold \\ 0.5, odftype \\ nil, relaxtime \\ 1, floor \\ 0.1, mingap \\ 10, medianspan \\ 11, whtype \\ 1, rawodf \\ 0) do
  %UGen.Onsets.Kr{chain: chain, threshold: threshold, odftype: odftype, relaxtime: relaxtime, floor: floor, mingap: mingap, medianspan: medianspan, whtype: whtype, rawodf: rawodf}
end

  def description do
    "Onset detector"
  end

end
