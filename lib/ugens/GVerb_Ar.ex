defmodule GVerb.Ar do
  def name(_ugen_struct), do: "GVerb"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 2
  def outputs(_ugen_struct), do: [2, 2]
  def args(_ugen_struct), do: [:in, :roomsize, :revtime, :damping, :inputbw, :spread, :drylevel, :earlyreflevel, :taillevel, :maxroomsize]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: nil)
    field(:roomsize, float, default: 10)
    field(:revtime, float, default: 3)
    field(:damping, float, default: 0.5)
    field(:inputbw, float, default: 0.5)
    field(:spread, float, default: 15)
    field(:drylevel, float, default: 1)
    field(:earlyreflevel, float, default: 0.7)
    field(:taillevel, float, default: 0.5)
    field(:maxroomsize, float, default: 300)

  end
end
