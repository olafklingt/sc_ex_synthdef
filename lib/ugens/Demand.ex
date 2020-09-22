defmodule Demand do
  def ar(trig \\ nil, reset \\ nil, demandUGens \\ nil) do
  %UGen.Demand.Ar{trig: trig, reset: reset, demandUGens: demandUGens}
end
    def kr(trig \\ nil, reset \\ nil, demandUGens \\ nil) do
  %UGen.Demand.Kr{trig: trig, reset: reset, demandUGens: demandUGens}
end

end
