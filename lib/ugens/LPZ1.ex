defmodule LPZ1 do
  def ar(inv \\ 0.0) do
  %UGen.LPZ1.Ar{in: inv}
end
    def kr(inv \\ 0.0) do
  %UGen.LPZ1.Kr{in: inv}
end

  def description do
    "Two point average filter"
  end

end
