defmodule UGen.Sum do
  # sum1
  def sum([a]) do
    a
  end

  # sum2
  def sum([a, b]) do
    UGen.add(a, b)
  end

  # sum3
  def sum([a, b, c]) do
    %UGen.Sum3{in0: a, in1: b, in2: c}
  end

  # sum4
  def sum([a, b, c, d]) do
    %UGen.Sum4{in0: a, in1: b, in2: c, in3: d}
  end

  # sum more than 4
  def sum([a, b, c, d | e]) do
    f = %UGen.Sum4{in0: a, in1: b, in2: c, in3: d}
    sum([f | e])
  end

  def description do
    "psydo Ugen to sum an array of UGens and values."
  end
end
