defmodule Pan4 do
  def ar(inv \\ nil, xpos \\ 0.0, ypos \\ 0.0, level \\ 1.0) do
  %UGen.Pan4.Ar{in: inv, xpos: xpos, ypos: ypos, level: level}
end
    def kr(inv \\ nil, xpos \\ 0.0, ypos \\ 0.0, level \\ 1.0) do
  %UGen.Pan4.Kr{in: inv, xpos: xpos, ypos: ypos, level: level}
end

  def description do
    "Four channel equal power pan."
  end

end
