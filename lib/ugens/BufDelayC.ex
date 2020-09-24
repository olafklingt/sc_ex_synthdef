defmodule BufDelayC do
  def ar(buf \\ 0, inv \\ 0.0, delaytime \\ 0.2) do
  %UGen.BufDelayC.Ar{buf: buf, in: inv, delaytime: delaytime}
end
    def kr(buf \\ 0, inv \\ 0.0, delaytime \\ 0.2) do
  %UGen.BufDelayC.Kr{buf: buf, in: inv, delaytime: delaytime}
end

  def description do
    "Buffer based simple delay line with cubic interpolation."
  end

end
