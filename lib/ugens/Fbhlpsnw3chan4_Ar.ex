defmodule UGen.Fbhlpsnw3chan4.Ar do
  def name(_ugen_struct), do: "Fbhlpsnw3chan4"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in1, :in2, :in3, :in4, :in5, :in6, :in7, :in8, :in9, :in10, :in11, :in12, :in13, :in14, :in15, :in16, :in17, :att, :feedbacksize, :hq1, :hq2, :hq3, :lq1, :lq2, :lq3, :outmix, :ratio, :rel, :thresh]
  def special_index(_ugen_struct), do: 0
  def description do
    "(Undocumented class)"
  end

  use TypedStruct

  typedstruct do
    field(:in1, float, default: nil)
    field(:in2, float, default: nil)
    field(:in3, float, default: nil)
    field(:in4, float, default: nil)
    field(:in5, float, default: nil)
    field(:in6, float, default: nil)
    field(:in7, float, default: nil)
    field(:in8, float, default: nil)
    field(:in9, float, default: nil)
    field(:in10, float, default: nil)
    field(:in11, float, default: nil)
    field(:in12, float, default: nil)
    field(:in13, float, default: nil)
    field(:in14, float, default: nil)
    field(:in15, float, default: nil)
    field(:in16, float, default: nil)
    field(:in17, float, default: nil)
    field(:att, float, default: 0.01)
    field(:feedbacksize, float, default: 0.0)
    field(:hq1, float, default: 1.0)
    field(:hq2, float, default: 1.0)
    field(:hq3, float, default: 1.0)
    field(:lq1, float, default: 1.0)
    field(:lq2, float, default: 1.0)
    field(:lq3, float, default: 1.0)
    field(:outmix, float, default: 0.0)
    field(:ratio, float, default: 10.0)
    field(:rel, float, default: 0.1)
    field(:thresh, float, default: -6.0)

  end
end
