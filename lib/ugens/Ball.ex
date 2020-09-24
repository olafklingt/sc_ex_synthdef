defmodule Ball do
  def ar(inv \\ 0.0, g \\ 1, damp \\ 0, friction \\ 0.01) do
  %UGen.Ball.Ar{in: inv, g: g, damp: damp, friction: friction}
end
    def kr(inv \\ 0.0, g \\ 1, damp \\ 0, friction \\ 0.01) do
  %UGen.Ball.Kr{in: inv, g: g, damp: damp, friction: friction}
end

  def description do
    "physical model of bouncing object"
  end

end
