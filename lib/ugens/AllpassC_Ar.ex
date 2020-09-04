defmodule AllpassC.Ar do
  def name(_ugen_struct), do: "AllpassC"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:in, :maxdelaytime, :delaytime, :decaytime]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:maxdelaytime, float, default: 0.2)
    field(:delaytime, float, default: 0.2)
    field(:decaytime, float, default: 1.0)

  end
end
