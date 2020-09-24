defmodule CombN do
  def ar(inv \\ 0.0, maxdelaytime \\ 0.2, delaytime \\ 0.2, decaytime \\ 1.0) do
  %UGen.CombN.Ar{in: inv, maxdelaytime: maxdelaytime, delaytime: delaytime, decaytime: decaytime}
end
    def kr(inv \\ 0.0, maxdelaytime \\ 0.2, delaytime \\ 0.2, decaytime \\ 1.0) do
  %UGen.CombN.Kr{in: inv, maxdelaytime: maxdelaytime, delaytime: delaytime, decaytime: decaytime}
end

  def description do
    "Comb delay line with no interpolation."
  end

end
