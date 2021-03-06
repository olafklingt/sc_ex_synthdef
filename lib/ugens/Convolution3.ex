defmodule Convolution3 do
  def ar(inv \\ nil, kernel \\ nil, trigger \\ 0, framesize \\ 2048) do
  %UGen.Convolution3.Ar{in: inv, kernel: kernel, trigger: trigger, framesize: framesize}
end
    def kr(inv \\ nil, kernel \\ nil, trigger \\ 0, framesize \\ 2048) do
  %UGen.Convolution3.Kr{in: inv, kernel: kernel, trigger: trigger, framesize: framesize}
end

  def description do
    "Time based convolver."
  end

end
