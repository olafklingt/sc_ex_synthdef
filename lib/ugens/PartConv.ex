defmodule PartConv do
  def ar(inv \\ nil, fftsize \\ nil, irbufnum \\ nil) do
  %UGen.PartConv.Ar{in: inv, fftsize: fftsize, irbufnum: irbufnum}
end

  def description do
    "Real-time partitioned convolution"
  end

end
