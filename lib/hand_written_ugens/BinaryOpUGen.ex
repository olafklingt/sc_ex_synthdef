defmodule UGen.BOp do
  @special_index_map %{
    :+ => 0,
    :- => 1,
    :* => 2,
    :/ => 4,
    :< => 8,
    :<= => 10,
    :> => 9,
    :>= => 11,
    :neg => 0,
    :reciprocal => 16,
    :bitNot => 4,
    :abs => 5,
    :asFloat => 6,
    :asInteger => 7,
    :ceil => 8,
    :floor => 9,
    :frac => 10,
    :sign => 11,
    :squared => 12,
    :cubed => 13,
    :sqrt => 14,
    :exp => 15,
    :midicps => 17,
    :cpsmidi => 18,
    :midiratio => 19,
    :ratiomidi => 20,
    :ampdb => 22,
    :dbamp => 21,
    :octcps => 23,
    :cpsoct => 24,
    :log => 25,
    :log2 => 26,
    :log10 => 27,
    :sin => 28,
    :cos => 29,
    :tan => 30,
    :asin => 31,
    :acos => 32,
    :atan => 33,
    :sinh => 34,
    :cosh => 35,
    :tanh => 36,
    :rand => 37,
    :rand2 => 38,
    :linrand => 39,
    :bilinrand => 40,
    :sum3rand => 41,
    :distort => 42,
    :softclip => 43,
    :coin => 44,
    :rectWindow => 48,
    :hanWindow => 49,
    :welWindow => 50,
    :triWindow => 51,
    :scurve => 53,
    :ramp => 52,
    :div => 3,
    :mod => 5,
    :pow => 25,
    :min => 12,
    :max => 13,
    :bitAnd => 14,
    :bitOr => 15,
    :bitXor => 16,
    :lcm => 17,
    :gcd => 18,
    :round => 19,
    :roundUp => 20,
    :trunc => 21,
    :atan2 => 22,
    :hypot => 23,
    :hypotApx => 24,
    :leftShift => 26,
    :rightShift => 27,
    :unsignedRightShift => 28,
    :ring1 => 30,
    :ring2 => 31,
    :ring3 => 32,
    :ring4 => 33,
    :difsqr => 34,
    :sumsqr => 35,
    :sqrsum => 36,
    :sqrdif => 37,
    :absdif => 38,
    :thresh => 39,
    :amclip => 40,
    :scaleneg => 41,
    :clip2 => 42,
    :fold2 => 44,
    :wrap2 => 45,
    :excess => 43,
    :firstArg => 46,
    :rrand => 47,
    :exprand => 48,
    :not => 1
  }
  def name(_ugen_struct), do: "BinaryOpUGen"

  def rate(ugen_struct) do
    a = ugen_struct.a
    b = ugen_struct.b

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

    max(
      a_rate,
      b_rate
    )
  end

  def number_of_outputs(_ugen_struct), do: 1
  def outputs(ugen_struct), do: [rate(ugen_struct)]
  def args(_ugen_struct), do: [:selector, :a, :b]

  def special_index(ugen_struct) do
    @special_index_map[ugen_struct.selector]
  end

  use TypedStruct

  typedstruct do
    field(:selector, atom, default: nil)
    field(:a, float, default: nil)
    field(:b, float, default: nil)
  end
end
