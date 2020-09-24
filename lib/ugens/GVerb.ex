defmodule GVerb do
  def ar(inv \\ nil, roomsize \\ 10, revtime \\ 3, damping \\ 0.5, inputbw \\ 0.5, spread \\ 15, drylevel \\ 1, earlyreflevel \\ 0.7, taillevel \\ 0.5, maxroomsize \\ 300) do
  %UGen.GVerb.Ar{in: inv, roomsize: roomsize, revtime: revtime, damping: damping, inputbw: inputbw, spread: spread, drylevel: drylevel, earlyreflevel: earlyreflevel, taillevel: taillevel, maxroomsize: maxroomsize}
end

  def description do
    "A two-channel reverb"
  end

end
