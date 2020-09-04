defmodule UOp do
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
  def name(_ugen_struct), do: "UnaryOpUGen"

  def rate(ugen_struct) do
    a = ugen_struct.a

    if is_number(a) do
      0
    else
      apply(a.__struct__, :rate, [a])
    end
  end

  def number_of_outputs(_ugen_struct), do: 1
  def outputs(ugen_struct), do: [rate(ugen_struct)]
  def args(_ugen_struct), do: [:selector, :a]

  def special_index(ugen_struct) do
    @special_index_map[ugen_struct.selector]
  end

  use TypedStruct

  typedstruct do
    field(:selector, atom, default: nil)
    field(:a, float, default: nil)
  end

  def softclip(a) do
    %UOp{selector: :softclip, a: a}
  end

  def hanWindow(a) do
    %UOp{selector: :hanWindow, a: a}
  end

  def wrap2(a) do
    %UOp{selector: :wrap2, a: a}
  end

  def distort(a) do
    %UOp{selector: :distort, a: a}
  end

  def coin(a) do
    %UOp{selector: :coin, a: a}
  end

  def bitNot(a) do
    %UOp{selector: :bitNot, a: a}
  end

  def rightShift(a) do
    %UOp{selector: :rightShift, a: a}
  end

  def cpsmidi(a) do
    %UOp{selector: :cpsmidi, a: a}
  end

  def rand(a) do
    %UOp{selector: :rand, a: a}
  end

  def midicps(a) do
    %UOp{selector: :midicps, a: a}
  end

  def pow(a) do
    %UOp{selector: :pow, a: a}
  end

  def cpsoct(a) do
    %UOp{selector: :cpsoct, a: a}
  end

  def sqrsum(a) do
    %UOp{selector: :sqrsum, a: a}
  end

  def cosh(a) do
    %UOp{selector: :cosh, a: a}
  end

  def firstArg(a) do
    %UOp{selector: :firstArg, a: a}
  end

  def tan(a) do
    %UOp{selector: :tan, a: a}
  end

  def cos(a) do
    %UOp{selector: :cos, a: a}
  end

  def fold2(a) do
    %UOp{selector: :fold2, a: a}
  end

  def squared(a) do
    %UOp{selector: :squared, a: a}
  end

  def acos(a) do
    %UOp{selector: :acos, a: a}
  end

  def dbamp(a) do
    %UOp{selector: :dbamp, a: a}
  end

  def asInteger(a) do
    %UOp{selector: :asInteger, a: a}
  end

  def sum3rand(a) do
    %UOp{selector: :sum3rand, a: a}
  end

  def abs(a) do
    %UOp{selector: :abs, a: a}
  end

  def ampdb(a) do
    %UOp{selector: :ampdb, a: a}
  end

  def sign(a) do
    %UOp{selector: :sign, a: a}
  end

  def unsignedRightShift(a) do
    %UOp{selector: :unsignedRightShift, a: a}
  end

  def floor(a) do
    %UOp{selector: :floor, a: a}
  end

  def roundUp(a) do
    %UOp{selector: :roundUp, a: a}
  end

  def tanh(a) do
    %UOp{selector: :tanh, a: a}
  end

  def asFloat(a) do
    %UOp{selector: :asFloat, a: a}
  end

  def ramp(a) do
    %UOp{selector: :ramp, a: a}
  end

  def octcps(a) do
    %UOp{selector: :octcps, a: a}
  end

  def rectWindow(a) do
    %UOp{selector: :rectWindow, a: a}
  end

  def thresh(a) do
    %UOp{selector: :thresh, a: a}
  end

  def sinh(a) do
    %UOp{selector: :sinh, a: a}
  end

  def welWindow(a) do
    %UOp{selector: :welWindow, a: a}
  end

  def triWindow(a) do
    %UOp{selector: :triWindow, a: a}
  end

  def bilinrand(a) do
    %UOp{selector: :bilinrand, a: a}
  end

  def frac(a) do
    %UOp{selector: :frac, a: a}
  end

  def not a do
    %UOp{selector: :not, a: a}
  end

  def sqrt(a) do
    %UOp{selector: :sqrt, a: a}
  end

  def asin(a) do
    %UOp{selector: :asin, a: a}
  end

  def sin(a) do
    %UOp{selector: :sin, a: a}
  end

  def ceil(a) do
    %UOp{selector: :ceil, a: a}
  end

  def log10(a) do
    %UOp{selector: :log10, a: a}
  end

  def log2(a) do
    %UOp{selector: :log2, a: a}
  end

  def log(a) do
    %UOp{selector: :log, a: a}
  end

  def exp(a) do
    %UOp{selector: :exp, a: a}
  end

  def leftShift(a) do
    %UOp{selector: :leftShift, a: a}
  end

  def mod(a) do
    %UOp{selector: :mod, a: a}
  end

  def reciprocal(a) do
    %UOp{selector: :reciprocal, a: a}
  end

  def neg(a) do
    %UOp{selector: :neg, a: a}
  end

  def linrand(a) do
    %UOp{selector: :linrand, a: a}
  end

  def midiratio(a) do
    %UOp{selector: :midiratio, a: a}
  end

  def scurve(a) do
    %UOp{selector: :scurve, a: a}
  end

  def rand2(a) do
    %UOp{selector: :rand2, a: a}
  end

  def ratiomidi(a) do
    %UOp{selector: :ratiomidi, a: a}
  end

  def cubed(a) do
    %UOp{selector: :cubed, a: a}
  end

  def atan(a) do
    %UOp{selector: :atan, a: a}
  end
end
