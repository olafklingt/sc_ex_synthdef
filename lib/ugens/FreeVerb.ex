defmodule FreeVerb do
  def ar(inv \\ nil, mix \\ 0.33, room \\ 0.5, damp \\ 0.5) do
  %UGen.FreeVerb.Ar{in: inv, mix: mix, room: room, damp: damp}
end

  def description do
    "A reverb"
  end

end
