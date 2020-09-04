defmodule FaustFbhlpsnw3.Kr do
  def name(_ugen_struct), do: "FaustFbhlpsnw3"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in1, :in2, :in3, :in4, :in5, :in6, :in7, :in8, :in9, :in10, :in11, :in12, :in13, :in14, :in15, :in16, :in17, :in18, :in19, :in20, :in21, :in22, :in23, :in24, :in25, :in26, :in27, :in28, :in29, :att, :feedbacksize, :outmix, :ratio, :rel, :thresh]
  def special_index(_ugen_struct), do: 0

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
    field(:in18, float, default: nil)
    field(:in19, float, default: nil)
    field(:in20, float, default: nil)
    field(:in21, float, default: nil)
    field(:in22, float, default: nil)
    field(:in23, float, default: nil)
    field(:in24, float, default: nil)
    field(:in25, float, default: nil)
    field(:in26, float, default: nil)
    field(:in27, float, default: nil)
    field(:in28, float, default: nil)
    field(:in29, float, default: nil)
    field(:att, float, default: 0.01)
    field(:feedbacksize, float, default: 0.0)
    field(:outmix, float, default: 0.0)
    field(:ratio, float, default: 10.0)
    field(:rel, float, default: 0.1)
    field(:thresh, float, default: 0.9)

  end
end
