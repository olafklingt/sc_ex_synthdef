defmodule Crackle do
  def ar(chaosParam \\ 1.5) do
  %UGen.Crackle.Ar{chaosParam: chaosParam}
end
    def kr(chaosParam \\ 1.5) do
  %UGen.Crackle.Kr{chaosParam: chaosParam}
end

  def description do
    "Chaotic noise function."
  end

end
