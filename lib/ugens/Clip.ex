defmodule Clip do
  def ar(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.Clip.Ar{in: inv, lo: lo, hi: hi}
end
    def ir(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.Clip.Ir{in: inv, lo: lo, hi: hi}
end
    def kr(inv \\ 0.0, lo \\ 0.0, hi \\ 1.0) do
  %UGen.Clip.Kr{in: inv, lo: lo, hi: hi}
end

end
