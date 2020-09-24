defmodule UGen.Sum3 do
  def name(_ugen_struct), do: "Sum3"

  def rate(ugen_struct) do
    a = ugen_struct.in2

    if is_number(a) do
      0
    else
      apply(a.__struct__, :rate, [a])
    end
  end

  def number_of_outputs(_ugen_struct), do: 1
  def outputs(ugen_struct), do: [rate(ugen_struct)]
  def args(_ugen_struct), do: [:in0, :in1, :in2]
  def special_index(_ugen_struct), do: 0

  def description do
    "Sum three signals."
  end

  use TypedStruct

  typedstruct do
    field(:in0, float, default: nil)
    field(:in1, float, default: nil)
    field(:in2, float, default: nil)
  end
end
