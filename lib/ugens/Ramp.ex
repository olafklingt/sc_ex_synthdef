defmodule Ramp do
  def ar(inv \\ 0.0, lagTime \\ 0.1) do
  %UGen.Ramp.Ar{in: inv, lagTime: lagTime}
end
    def kr(inv \\ 0.0, lagTime \\ 0.1) do
  %UGen.Ramp.Kr{in: inv, lagTime: lagTime}
end

  def description do
    "Break a continuous signal into line segments"
  end

end
