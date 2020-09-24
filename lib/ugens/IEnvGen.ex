defmodule IEnvGen do
  def ar(envelope \\ nil, index \\ nil) do
  %UGen.IEnvGen.Ar{envelope: envelope, index: index}
end
    def kr(envelope \\ nil, index \\ nil) do
  %UGen.IEnvGen.Kr{envelope: envelope, index: index}
end

  def description do
    "Envelope generator for polling values from an Env"
  end

end
