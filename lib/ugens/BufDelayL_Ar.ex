defmodule UGen.BufDelayL.Ar do
  def name(_ugen_struct), do: "BufDelayL"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:buf, :in, :delaytime]
  def special_index(_ugen_struct), do: 0
  def description do
    "Buffer based simple delay line with linear interpolation."
  end

  use TypedStruct

  typedstruct do
    field(:buf, float, default: 0)
    field(:in, float, default: 0.0)
    field(:delaytime, float, default: 0.2)

  end
end
