defmodule BufRateScale do
  def ir(bufnum \\ nil) do
  %UGen.BufRateScale.Ir{bufnum: bufnum}
end
    def kr(bufnum \\ nil) do
  %UGen.BufRateScale.Kr{bufnum: bufnum}
end

  def description do
    "Buffer rate scaling in respect to server samplerate."
  end

end
