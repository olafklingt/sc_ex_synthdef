defmodule HPZ1 do
  def ar(inv \\ 0.0) do
  %UGen.HPZ1.Ar{in: inv}
end
    def kr(inv \\ 0.0) do
  %UGen.HPZ1.Kr{in: inv}
end

  def description do
    "Two point difference filter"
  end

end
