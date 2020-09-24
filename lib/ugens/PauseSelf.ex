defmodule PauseSelf do
  def kr(inv \\ nil) do
  %UGen.PauseSelf.Kr{in: inv}
end

  def description do
    "When triggered, pause enclosing synth."
  end

end
