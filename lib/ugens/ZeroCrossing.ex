defmodule ZeroCrossing do
  def ar(inv \\ 0.0) do
  %UGen.ZeroCrossing.Ar{in: inv}
end
    def kr(inv \\ 0.0) do
  %UGen.ZeroCrossing.Kr{in: inv}
end

  def description do
    "Zero crossing frequency follower"
  end

end
