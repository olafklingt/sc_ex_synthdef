defmodule DegreeToKey do
  def ar(bufnum \\ nil, inv \\ 0.0, octave \\ 12.0) do
  %UGen.DegreeToKey.Ar{bufnum: bufnum, in: inv, octave: octave}
end
    def kr(bufnum \\ nil, inv \\ 0.0, octave \\ 12.0) do
  %UGen.DegreeToKey.Kr{bufnum: bufnum, in: inv, octave: octave}
end

  def description do
    "Convert signal to modal pitch."
  end

end
