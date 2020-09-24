defmodule IFFT do
  def ar(buffer \\ nil, wintype \\ 0, winsize \\ 0) do
  %UGen.IFFT.Ar{buffer: buffer, wintype: wintype, winsize: winsize}
end
    def kr(buffer \\ nil, wintype \\ 0, winsize \\ 0) do
  %UGen.IFFT.Kr{buffer: buffer, wintype: wintype, winsize: winsize}
end

  def description do
    "Inverse Fast Fourier Transform"
  end

end
