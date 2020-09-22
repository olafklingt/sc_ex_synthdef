defmodule RunningSum do
  def ar(inv \\ nil, numsamp \\ 40) do
  %UGen.RunningSum.Ar{in: inv, numsamp: numsamp}
end
    def kr(inv \\ nil, numsamp \\ 40) do
  %UGen.RunningSum.Kr{in: inv, numsamp: numsamp}
end

end
