defmodule UGen do
  def shape_id(name) do
    case name do
      :step -> 0
      :lin -> 1
      :linear -> 1
      :exp -> 2
      :exponential -> 2
      :sin -> 3
      :sine -> 3
      :wel -> 4
      :welch -> 4
      :sqr -> 6
      :squared -> 6
      :cub -> 7
      :cubed -> 7
      :hold -> 8
    end
  end

  def sum(array) do
    array =
      Enum.sort(array, fn a, b ->
        a.__struct__.rate(a) < b.__struct__.rate(b)
      end)

    UGen.Sum.sum(array)
  end

  def hypot(a, b) do
    %UGen.BOp{selector: :hypot, a: a, b: b}
  end

  def scaleneg(a, b) do
    %UGen.BOp{selector: :scaleneg, a: a, b: b}
  end

  def sub(a, b) do
    %UGen.BOp{selector: :-, a: a, b: b}
  end

  def difsqr(a, b) do
    %UGen.BOp{selector: :difsqr, a: a, b: b}
  end

  def sqrdif(a, b) do
    %UGen.BOp{selector: :sqrdif, a: a, b: b}
  end

  def absdif(a, b) do
    %UGen.BOp{selector: :absdif, a: a, b: b}
  end

  def hypotApx(a, b) do
    %UGen.BOp{selector: :hypotApx, a: a, b: b}
  end

  def trunc(a, b) do
    %UGen.BOp{selector: :trunc, a: a, b: b}
  end

  def biggerorequalthan(a, b) do
    %UGen.BOp{selector: :>=, a: a, b: b}
  end

  def sumsqr(a, b) do
    %UGen.BOp{selector: :sumsqr, a: a, b: b}
  end

  def bitOr(a, b) do
    %UGen.BOp{selector: :bitOr, a: a, b: b}
  end

  def lcm(a, b) do
    %UGen.BOp{selector: :lcm, a: a, b: b}
  end

  def div(a, b) do
    %UGen.BOp{selector: :/, a: a, b: b}
  end

  def clip2(a, b) do
    %UGen.BOp{selector: :clip2, a: a, b: b}
  end

  def ring4(a, b) do
    %UGen.BOp{selector: :ring4, a: a, b: b}
  end

  def smallerthan(a, b) do
    %UGen.BOp{selector: :<, a: a, b: b}
  end

  def excess(a, b) do
    %UGen.BOp{selector: :excess, a: a, b: b}
  end

  def maxOp(a, b) do
    %UGen.BOp{selector: :max, a: a, b: b}
  end

  def smallerorequalthan(a, b) do
    %UGen.BOp{selector: :<=, a: a, b: b}
  end

  def rrand(a, b) do
    %UGen.BOp{selector: :rrand, a: a, b: b}
  end

  def gcd(a, b) do
    %UGen.BOp{selector: :gcd, a: a, b: b}
  end

  def biggerthan(a, b) do
    %UGen.BOp{selector: :>, a: a, b: b}
  end

  def exprand(a, b) do
    %UGen.BOp{selector: :exprand, a: a, b: b}
  end

  def round(a, b) do
    %UGen.BOp{selector: :round, a: a, b: b}
  end

  def ring1(a, b) do
    %UGen.BOp{selector: :ring1, a: a, b: b}
  end

  def bitXor(a, b) do
    %UGen.BOp{selector: :bitXor, a: a, b: b}
  end

  def mul(a, b) do
    %UGen.BOp{selector: :*, a: a, b: b}
  end

  def ring2(a, b) do
    %UGen.BOp{selector: :ring2, a: a, b: b}
  end

  def add(a, b) do
    %UGen.BOp{selector: :+, a: a, b: b}
  end

  def idiv(a, b) do
    %UGen.BOp{selector: :div, a: a, b: b}
  end

  def minOp(a, b) do
    %UGen.BOp{selector: :min, a: a, b: b}
  end

  def ring3(a, b) do
    %UGen.BOp{selector: :ring3, a: a, b: b}
  end

  def atan2(a, b) do
    %UGen.BOp{selector: :atan2, a: a, b: b}
  end

  def amclip(a, b) do
    %UGen.BOp{selector: :amclip, a: a, b: b}
  end

  def bitAnd(a, b) do
    %UGen.BOp{selector: :bitAnd, a: a, b: b}
  end

  def softclip(a) do
    %UGen.UOp{selector: :softclip, a: a}
  end

  def hanWindow(a) do
    %UGen.UOp{selector: :hanWindow, a: a}
  end

  def wrap2(a) do
    %UGen.UOp{selector: :wrap2, a: a}
  end

  def distort(a) do
    %UGen.UOp{selector: :distort, a: a}
  end

  def coin(a) do
    %UGen.UOp{selector: :coin, a: a}
  end

  def bitNot(a) do
    %UGen.UOp{selector: :bitNot, a: a}
  end

  def rightShift(a) do
    %UGen.UOp{selector: :rightShift, a: a}
  end

  def cpsmidi(a) do
    %UGen.UOp{selector: :cpsmidi, a: a}
  end

  def rand(a) do
    %UGen.UOp{selector: :rand, a: a}
  end

  def midicps(a) do
    %UGen.UOp{selector: :midicps, a: a}
  end

  def pow(a) do
    %UGen.UOp{selector: :pow, a: a}
  end

  def cpsoct(a) do
    %UGen.UOp{selector: :cpsoct, a: a}
  end

  def sqrsum(a) do
    %UGen.UOp{selector: :sqrsum, a: a}
  end

  def cosh(a) do
    %UGen.UOp{selector: :cosh, a: a}
  end

  def firstArg(a) do
    %UGen.UOp{selector: :firstArg, a: a}
  end

  def tan(a) do
    %UGen.UOp{selector: :tan, a: a}
  end

  def cos(a) do
    %UGen.UOp{selector: :cos, a: a}
  end

  def fold2(a) do
    %UGen.UOp{selector: :fold2, a: a}
  end

  def squared(a) do
    %UGen.UOp{selector: :squared, a: a}
  end

  def acos(a) do
    %UGen.UOp{selector: :acos, a: a}
  end

  def dbamp(a) do
    %UGen.UOp{selector: :dbamp, a: a}
  end

  def asInteger(a) do
    %UGen.UOp{selector: :asInteger, a: a}
  end

  def sum3rand(a) do
    %UGen.UOp{selector: :sum3rand, a: a}
  end

  def abs(a) do
    %UGen.UOp{selector: :abs, a: a}
  end

  def ampdb(a) do
    %UGen.UOp{selector: :ampdb, a: a}
  end

  def sign(a) do
    %UGen.UOp{selector: :sign, a: a}
  end

  def unsignedRightShift(a) do
    %UGen.UOp{selector: :unsignedRightShift, a: a}
  end

  def floor(a) do
    %UGen.UOp{selector: :floor, a: a}
  end

  def roundUp(a) do
    %UGen.UOp{selector: :roundUp, a: a}
  end

  def tanh(a) do
    %UGen.UOp{selector: :tanh, a: a}
  end

  def asFloat(a) do
    %UGen.UOp{selector: :asFloat, a: a}
  end

  def ramp(a) do
    %UGen.UOp{selector: :ramp, a: a}
  end

  def octcps(a) do
    %UGen.UOp{selector: :octcps, a: a}
  end

  def rectWindow(a) do
    %UGen.UOp{selector: :rectWindow, a: a}
  end

  def thresh(a) do
    %UGen.UOp{selector: :thresh, a: a}
  end

  def sinh(a) do
    %UGen.UOp{selector: :sinh, a: a}
  end

  def welWindow(a) do
    %UGen.UOp{selector: :welWindow, a: a}
  end

  def triWindow(a) do
    %UGen.UOp{selector: :triWindow, a: a}
  end

  def bilinrand(a) do
    %UGen.UOp{selector: :bilinrand, a: a}
  end

  def frac(a) do
    %UGen.UOp{selector: :frac, a: a}
  end

  def not a do
    %UGen.UOp{selector: :not, a: a}
  end

  def sqrt(a) do
    %UGen.UOp{selector: :sqrt, a: a}
  end

  def asin(a) do
    %UGen.UOp{selector: :asin, a: a}
  end

  def sin(a) do
    %UGen.UOp{selector: :sin, a: a}
  end

  def ceil(a) do
    %UGen.UOp{selector: :ceil, a: a}
  end

  def log10(a) do
    %UGen.UOp{selector: :log10, a: a}
  end

  def log2(a) do
    %UGen.UOp{selector: :log2, a: a}
  end

  def log(a) do
    %UGen.UOp{selector: :log, a: a}
  end

  def exp(a) do
    %UGen.UOp{selector: :exp, a: a}
  end

  def leftShift(a) do
    %UGen.UOp{selector: :leftShift, a: a}
  end

  def mod(a) do
    %UGen.UOp{selector: :mod, a: a}
  end

  def reciprocal(a) do
    %UGen.UOp{selector: :reciprocal, a: a}
  end

  def neg(a) do
    %UGen.UOp{selector: :neg, a: a}
  end

  def linrand(a) do
    %UGen.UOp{selector: :linrand, a: a}
  end

  def midiratio(a) do
    %UGen.UOp{selector: :midiratio, a: a}
  end

  def scurve(a) do
    %UGen.UOp{selector: :scurve, a: a}
  end

  def rand2(a) do
    %UGen.UOp{selector: :rand2, a: a}
  end

  def ratiomidi(a) do
    %UGen.UOp{selector: :ratiomidi, a: a}
  end

  def cubed(a) do
    %UGen.UOp{selector: :cubed, a: a}
  end

  def atan(a) do
    %UGen.UOp{selector: :atan, a: a}
  end

  def description do
    "easier access to functions provided by Unary and Binary opperators and sum."
  end
end
