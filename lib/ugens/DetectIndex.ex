defmodule DetectIndex do
  def ar(bufnum \\ nil, inv \\ 0.0) do
  %UGen.DetectIndex.Ar{bufnum: bufnum, in: inv}
end
    def kr(bufnum \\ nil, inv \\ 0.0) do
  %UGen.DetectIndex.Kr{bufnum: bufnum, in: inv}
end

end
