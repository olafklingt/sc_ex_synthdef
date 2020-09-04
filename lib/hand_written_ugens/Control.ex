defmodule Control.Kr do
  def name(_ugen_struct), do: "Control"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:values]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:key, atom, enforce: true)
    field(:value, float, default: 0.1)
  end
end

defmodule Control do
  def kr(key, value) do
    %Control.Kr{key: key, value: value}
  end

  def kr({key, value}) do
    %Control.Kr{key: key, value: value}
  end

  def kr([{key, val} | _t]) do
    %Control.Kr{key: key, value: val}
  end
end
