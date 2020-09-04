defmodule Sum3.New do
  def name(_ugen_struct), do: "Sum3"

  def rate(ugen_struct) do
    a = ugen_struct.in0
    b = ugen_struct.in1
    c = ugen_struct.in2

    a_rate =
      if is_number(a) do
        0
      else
        apply(a.__struct__, :rate, [a])
      end

    b_rate =
      if is_number(b) do
        0
      else
        apply(b.__struct__, :rate, [b])
      end

    c_rate =
      if is_number(c) do
        0
      else
        apply(c.__struct__, :rate, [c])
      end

    max(
      a_rate,
      max(
        b_rate,
        c_rate
      )
    )
  end

  def number_of_outputs(_ugen_struct), do: 1
  def outputs(ugen_struct), do: [rate(ugen_struct)]
  def args(_ugen_struct), do: [:in0, :in1, :in2]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in0, float, default: nil)
    field(:in1, float, default: nil)
    field(:in2, float, default: nil)
  end
end
