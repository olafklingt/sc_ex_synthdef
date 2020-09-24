defmodule CombL do
  def ar(inv \\ 0.0, maxdelaytime \\ 0.2, delaytime \\ 0.2, decaytime \\ 1.0) do
  %UGen.CombL.Ar{in: inv, maxdelaytime: maxdelaytime, delaytime: delaytime, decaytime: decaytime}
end
    def kr(inv \\ 0.0, maxdelaytime \\ 0.2, delaytime \\ 0.2, decaytime \\ 1.0) do
  %UGen.CombL.Kr{in: inv, maxdelaytime: maxdelaytime, delaytime: delaytime, decaytime: decaytime}
end

  def description do
    "Comb delay line with linear interpolation."
  end

end
