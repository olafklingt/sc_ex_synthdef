defmodule Sanitize do
  def ar(inv \\ 0.0, replace \\ 0.0) do
  %UGen.Sanitize.Ar{in: inv, replace: replace}
end
    def kr(inv \\ 0.0, replace \\ 0.0) do
  %UGen.Sanitize.Kr{in: inv, replace: replace}
end

end
