defmodule Formant do
  def ar(fundfreq \\ 440.0, formfreq \\ 1760.0, bwfreq \\ 880.0) do
  %UGen.Formant.Ar{fundfreq: fundfreq, formfreq: formfreq, bwfreq: bwfreq}
end

  def description do
    "Formant oscillator"
  end

end
