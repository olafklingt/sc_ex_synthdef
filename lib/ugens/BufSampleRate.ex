defmodule BufSampleRate do
  def ir(bufnum \\ nil) do
  %UGen.BufSampleRate.Ir{bufnum: bufnum}
end
    def kr(bufnum \\ nil) do
  %UGen.BufSampleRate.Kr{bufnum: bufnum}
end

  def description do
    "Buffer sample rate."
  end

end
