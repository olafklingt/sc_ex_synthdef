defmodule Free do
  def kr(trig \\ nil, id \\ nil) do
  %UGen.Free.Kr{trig: trig, id: id}
end

  def description do
    "When triggered, frees a node."
  end

end
