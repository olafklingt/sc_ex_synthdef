defmodule Normalizer do
  def ar(inv \\ 0.0, level \\ 1.0, dur \\ 0.01) do
  %UGen.Normalizer.Ar{in: inv, level: level, dur: dur}
end

  def description do
    "Flattens dynamics."
  end

end
