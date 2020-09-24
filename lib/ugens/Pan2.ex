defmodule Pan2 do
  def ar(inv \\ nil, pos \\ 0.0, level \\ 1.0) do
  %UGen.Pan2.Ar{in: inv, pos: pos, level: level}
end
    def kr(inv \\ nil, pos \\ 0.0, level \\ 1.0) do
  %UGen.Pan2.Kr{in: inv, pos: pos, level: level}
end

  def description do
    "Two channel equal power pan."
  end

end
