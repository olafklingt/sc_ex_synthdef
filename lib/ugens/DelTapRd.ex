defmodule DelTapRd do
  def ar(buffer \\ nil, phase \\ nil, delTime \\ nil, interp \\ 1) do
  %UGen.DelTapRd.Ar{buffer: buffer, phase: phase, delTime: delTime, interp: interp}
end
    def kr(buffer \\ nil, phase \\ nil, delTime \\ nil, interp \\ 1) do
  %UGen.DelTapRd.Kr{buffer: buffer, phase: phase, delTime: delTime, interp: interp}
end

  def description do
    "Tap a delay line from a DelTapWr UGen"
  end

end
