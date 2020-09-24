defmodule BufFrames do
  def ir(bufnum \\ nil) do
  %UGen.BufFrames.Ir{bufnum: bufnum}
end
    def kr(bufnum \\ nil) do
  %UGen.BufFrames.Kr{bufnum: bufnum}
end

  def description do
    "Current number of frames allocated in the buffer."
  end

end
