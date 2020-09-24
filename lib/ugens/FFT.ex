defmodule FFT do
  def new(buffer \\ nil, inv \\ 0.0, hop \\ 0.5, wintype \\ 0, active \\ 1, winsize \\ 0) do
  %UGen.FFT.New{buffer: buffer, in: inv, hop: hop, wintype: wintype, active: active, winsize: winsize}
end

  def description do
    "Fast Fourier Transform"
  end

end
