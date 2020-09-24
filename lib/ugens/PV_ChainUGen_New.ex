defmodule UGen.PV_ChainUGen.New do
  def name(_ugen_struct), do: "PV_ChainUGen"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:maxSize]
  def special_index(_ugen_struct), do: 0
  def description do
    "Base class for UGens that operate on FFT chains"
  end

  use TypedStruct

  typedstruct do
    field(:maxSize, float, default: 0)

  end
end
