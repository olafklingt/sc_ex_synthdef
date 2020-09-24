defmodule BufChannels do
  def ir(bufnum \\ nil) do
  %UGen.BufChannels.Ir{bufnum: bufnum}
end
    def kr(bufnum \\ nil) do
  %UGen.BufChannels.Kr{bufnum: bufnum}
end

  def description do
    "Current number of channels of soundfile in buffer."
  end

end
