defmodule Convolution2L do
  def ar(inv \\ nil, kernel \\ nil, trigger \\ 0, framesize \\ 2048, crossfade \\ 1) do
  %UGen.Convolution2L.Ar{in: inv, kernel: kernel, trigger: trigger, framesize: framesize, crossfade: crossfade}
end

  def description do
    "Real-time convolver with linear interpolation"
  end

end
