defmodule HPZ2 do
  def ar(inv \\ 0.0) do
  %UGen.HPZ2.Ar{in: inv}
end
    def kr(inv \\ 0.0) do
  %UGen.HPZ2.Kr{in: inv}
end

  def description do
    "Two zero fixed midcut."
  end

end
