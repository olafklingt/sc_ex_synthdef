defmodule Pause do
  def kr(gate \\ nil, id \\ nil) do
  %UGen.Pause.Kr{gate: gate, id: id}
end

  def description do
    "When triggered, pauses a node."
  end

end
