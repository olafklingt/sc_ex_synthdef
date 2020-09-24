defmodule FBSineC do
  def ar(freq \\ 22050, im \\ 1, fb \\ 0.1, a \\ 1.1, c \\ 0.5, xi \\ 0.1, yi \\ 0.1) do
  %UGen.FBSineC.Ar{freq: freq, im: im, fb: fb, a: a, c: c, xi: xi, yi: yi}
end

  def description do
    "Feedback sine with chaotic phase indexing"
  end

end
