defmodule Convolution2 do
  def ar(inv \\ nil, kernel \\ nil, trigger \\ 0, framesize \\ 2048) do
  %UGen.Convolution2.Ar{in: inv, kernel: kernel, trigger: trigger, framesize: framesize}
end

  def description do
    "Real-time fixed kernel convolver."
  end

end
