defmodule DelayC do
  def ar(inv \\ 0.0, maxdelaytime \\ 0.2, delaytime \\ 0.2) do
  %UGen.DelayC.Ar{in: inv, maxdelaytime: maxdelaytime, delaytime: delaytime}
end
    def kr(inv \\ 0.0, maxdelaytime \\ 0.2, delaytime \\ 0.2) do
  %UGen.DelayC.Kr{in: inv, maxdelaytime: maxdelaytime, delaytime: delaytime}
end

  def description do
    "Simple delay line with cubic interpolation."
  end

end
