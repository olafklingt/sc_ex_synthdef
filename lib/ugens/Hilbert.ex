defmodule Hilbert do
  def ar(inv \\ nil) do
  %UGen.Hilbert.Ar{in: inv}
end

  def description do
    "Applies the Hilbert transform to an input signal."
  end

end
