defmodule WrapIndex do
  def ar(bufnum \\ nil, inv \\ 0.0) do
  %UGen.WrapIndex.Ar{bufnum: bufnum, in: inv}
end
    def kr(bufnum \\ nil, inv \\ 0.0) do
  %UGen.WrapIndex.Kr{bufnum: bufnum, in: inv}
end

end
