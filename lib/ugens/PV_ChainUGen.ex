defmodule PV_ChainUGen do
  def new(maxSize \\ 0) do
  %UGen.PV_ChainUGen.New{maxSize: maxSize}
end

  def description do
    "Base class for UGens that operate on FFT chains"
  end

end
