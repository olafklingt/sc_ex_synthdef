defmodule FreeSelf do
  def kr(inv \\ nil) do
  %UGen.FreeSelf.Kr{in: inv}
end

  def description do
    "When triggered, free enclosing synth."
  end

end
