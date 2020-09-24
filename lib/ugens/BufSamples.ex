defmodule BufSamples do
  def ir(bufnum \\ nil) do
  %UGen.BufSamples.Ir{bufnum: bufnum}
end
    def kr(bufnum \\ nil) do
  %UGen.BufSamples.Kr{bufnum: bufnum}
end

  def description do
    "Current number of samples in buffer."
  end

end
