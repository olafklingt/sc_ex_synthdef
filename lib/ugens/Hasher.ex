defmodule Hasher do
  def ar(inv \\ 0.0) do
  %UGen.Hasher.Ar{in: inv}
end
    def kr(inv \\ 0.0) do
  %UGen.Hasher.Kr{in: inv}
end

  def description do
    "Scrambled value with a hash function."
  end

end
