defmodule DelayN.Kr do
  def name(_ugen_struct), do: "DelayN"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:in, :maxdelaytime, :delaytime]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:in, float, default: 0.0)
    field(:maxdelaytime, float, default: 0.2)
    field(:delaytime, float, default: 0.2)

  end
end
