defmodule PeakFollower do
  def ar(inv \\ 0.0, decay \\ 0.999) do
  %UGen.PeakFollower.Ar{in: inv, decay: decay}
end
    def kr(inv \\ 0.0, decay \\ 0.999) do
  %UGen.PeakFollower.Kr{in: inv, decay: decay}
end

  def description do
    "Track peak signal amplitude."
  end

end
