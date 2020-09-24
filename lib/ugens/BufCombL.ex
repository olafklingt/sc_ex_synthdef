defmodule BufCombL do
  def ar(buf \\ 0, inv \\ 0.0, delaytime \\ 0.2, decaytime \\ 1.0) do
  %UGen.BufCombL.Ar{buf: buf, in: inv, delaytime: delaytime, decaytime: decaytime}
end

  def description do
    "Buffer based comb delay line with linear interpolation."
  end

end
