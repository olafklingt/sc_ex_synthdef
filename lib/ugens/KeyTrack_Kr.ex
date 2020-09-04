defmodule KeyTrack.Kr do
  def name(_ugen_struct), do: "KeyTrack"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:chain, :keydecay, :chromaleak]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:chain, float, default: nil)
    field(:keydecay, float, default: 2.0)
    field(:chromaleak, float, default: 0.5)

  end
end
