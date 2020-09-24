defmodule SpecPcile do
  def kr(buffer \\ nil, fraction \\ 0.5, interpolate \\ 0) do
  %UGen.SpecPcile.Kr{buffer: buffer, fraction: fraction, interpolate: interpolate}
end

  def description do
    "Find a percentile of FFT magnitude spectrum"
  end

end
