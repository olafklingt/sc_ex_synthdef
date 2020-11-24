defmodule UGen.Sum4 do
  def name(_ugen_struct), do: "Sum4"

  def rate(ugen_struct) do
    a = ugen_struct.in3

    if is_number(a) do
      0
    else
      apply(a.__struct__, :rate, [a])
    end
  end

  def number_of_outputs(_ugen_struct), do: 1
  def outputs(ugen_struct), do: [rate(ugen_struct)]
  def args(_ugen_struct), do: [:in0, :in1, :in2, :in3]
  def special_index(_ugen_struct), do: 0

  def description do
    "Sum four signals."
  end

  use TypedStruct

  typedstruct do
    field(:in0, float, default: nil)
    field(:in1, float, default: nil)
    field(:in2, float, default: nil)
    field(:in3, float, default: nil)
  end
end

# defmodule Sum4 do
#   def new(in0 \\ nil, in1 \\ nil, in2 \\ nil, in3 \\ nil) do
#   %Sum4.New{in0: in0, in1: in1, in2: in2, in3: in3}
# end
#
# end
