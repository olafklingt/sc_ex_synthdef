defmodule MantissaMask do
  def ar(inv \\ 0.0, bits \\ 3) do
  %UGen.MantissaMask.Ar{in: inv, bits: bits}
end
    def kr(inv \\ 0.0, bits \\ 3) do
  %UGen.MantissaMask.Kr{in: inv, bits: bits}
end

  def description do
    "Reduce precision."
  end

end
