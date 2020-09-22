defmodule UGen.Pluck.Ar do
  def name(_ugen_struct), do: "Pluck"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :trig, :maxdelaytime, :delaytime, :decaytime, :coef]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:trig, float, default: 1.0)
    field(:maxdelaytime, float, default: 0.2)
    field(:delaytime, float, default: 0.2)
    field(:decaytime, float, default: 1.0)
    field(:coef, float, default: 0.5)

  end
end
