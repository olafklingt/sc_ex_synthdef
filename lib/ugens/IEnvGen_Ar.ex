defmodule UGen.IEnvGen.Ar do
  def name(_ugen_struct), do: "IEnvGen"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:envelope, :index]
  def special_index(_ugen_struct), do: 0
  def description do
    "Envelope generator for polling values from an Env"
  end

  use TypedStruct

  typedstruct do
    field(:envelope, float, default: nil)
    field(:index, float, default: nil)

  end
end
