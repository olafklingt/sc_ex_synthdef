defmodule IndexInBetween do
  def ar(bufnum \\ nil, inv \\ 0.0) do
  %UGen.IndexInBetween.Ar{bufnum: bufnum, in: inv}
end
    def kr(bufnum \\ nil, inv \\ 0.0) do
  %UGen.IndexInBetween.Kr{bufnum: bufnum, in: inv}
end

  def description do
    "Finds the (lowest) point in the Buffer at which the input signal lies in-between the two values"
  end

end
