defmodule FreeVerb2 do
  def ar(inv \\ nil, in2 \\ nil, mix \\ 0.33, room \\ 0.5, damp \\ 0.5) do
  %UGen.FreeVerb2.Ar{in: inv, in2: in2, mix: mix, room: room, damp: damp}
end

  def description do
    "A two-channel reverb"
  end

end
