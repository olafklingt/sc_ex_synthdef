defmodule Convolution do
  def ar(inv \\ nil, kernel \\ nil, framesize \\ 512) do
  %UGen.Convolution.Ar{in: inv, kernel: kernel, framesize: framesize}
end

  def description do
    "Real-time convolver."
  end

end
