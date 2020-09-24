defmodule AllpassC do
  def ar(inv \\ 0.0, maxdelaytime \\ 0.2, delaytime \\ 0.2, decaytime \\ 1.0) do
  %UGen.AllpassC.Ar{in: inv, maxdelaytime: maxdelaytime, delaytime: delaytime, decaytime: decaytime}
end
    def kr(inv \\ 0.0, maxdelaytime \\ 0.2, delaytime \\ 0.2, decaytime \\ 1.0) do
  %UGen.AllpassC.Kr{in: inv, maxdelaytime: maxdelaytime, delaytime: delaytime, decaytime: decaytime}
end

  def description do
    "Schroeder allpass delay line with cubic interpolation."
  end

end
