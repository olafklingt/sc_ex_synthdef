defmodule RandID do
  def ir(id \\ 0) do
  %UGen.RandID.Ir{id: id}
end
    def kr(id \\ 0) do
  %UGen.RandID.Kr{id: id}
end

  def description do
    "Set the synth's random generator ID."
  end

end
