defmodule VarLag do
  def ar(inv \\ 0.0, time \\ 0.1, curvature \\ 0, warp \\ 5, start \\ nil) do
  %UGen.VarLag.Ar{in: inv, time: time, curvature: curvature, warp: warp, start: start}
end
    def kr(inv \\ 0.0, time \\ 0.1, curvature \\ 0, warp \\ 5, start \\ nil) do
  %UGen.VarLag.Kr{in: inv, time: time, curvature: curvature, warp: warp, start: start}
end

  def description do
    "Variable shaped lag"
  end

end
