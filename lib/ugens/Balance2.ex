defmodule Balance2 do
  def ar(left \\ nil, right \\ nil, pos \\ 0.0, level \\ 1.0) do
  %UGen.Balance2.Ar{left: left, right: right, pos: pos, level: level}
end
    def kr(left \\ nil, right \\ nil, pos \\ 0.0, level \\ 1.0) do
  %UGen.Balance2.Kr{left: left, right: right, pos: pos, level: level}
end

  def description do
    "Stereo signal balancer"
  end

end
