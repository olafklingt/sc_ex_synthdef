defmodule Spring do
  def ar(inv \\ 0.0, spring \\ 1, damp \\ 0) do
  %UGen.Spring.Ar{in: inv, spring: spring, damp: damp}
end
    def kr(inv \\ 0.0, spring \\ 1, damp \\ 0) do
  %UGen.Spring.Kr{in: inv, spring: spring, damp: damp}
end

  def description do
    "physical model of resonating spring"
  end

end
