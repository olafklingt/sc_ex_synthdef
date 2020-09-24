defmodule Shaper do
  def ar(bufnum \\ nil, inv \\ 0.0) do
  %UGen.Shaper.Ar{bufnum: bufnum, in: inv}
end
    def kr(bufnum \\ nil, inv \\ 0.0) do
  %UGen.Shaper.Kr{bufnum: bufnum, in: inv}
end

  def description do
    "Wave shaper."
  end

end
