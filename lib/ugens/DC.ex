defmodule DC do
  def ar(inv \\ 0.0) do
  %UGen.DC.Ar{in: inv}
end
    def kr(inv \\ 0.0) do
  %UGen.DC.Kr{in: inv}
end

  def description do
    "Create a constant amplitude signal"
  end

end
