defmodule StereoConvolution2L do
  def ar(inv \\ nil, kernelL \\ nil, kernelR \\ nil, trigger \\ 0, framesize \\ 2048, crossfade \\ 1) do
  %UGen.StereoConvolution2L.Ar{in: inv, kernelL: kernelL, kernelR: kernelR, trigger: trigger, framesize: framesize, crossfade: crossfade}
end

  def description do
    "Stereo real-time convolver with linear interpolation"
  end

end
