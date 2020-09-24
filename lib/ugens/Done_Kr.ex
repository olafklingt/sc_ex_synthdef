defmodule UGen.Done.Kr do
  def name(_ugen_struct), do: "Done"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:src]
  def special_index(_ugen_struct), do: 0
  def description do
    "Monitors another UGen to see when it is finished"
  end

  use TypedStruct

  typedstruct do
    field(:src, float, default: nil)

  end
end
