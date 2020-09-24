defmodule BufDur do
  def ir(bufnum \\ nil) do
  %UGen.BufDur.Ir{bufnum: bufnum}
end
    def kr(bufnum \\ nil) do
  %UGen.BufDur.Kr{bufnum: bufnum}
end

  def description do
    "Current duration of soundfile in buffer."
  end

end
