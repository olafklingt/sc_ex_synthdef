defmodule Control.Ar do
  def name(_ugen_struct), do: "AudioControl"
  def rate(_ugen_struct), do: 2
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

defmodule Control.Tr do
  def name(_ugen_struct), do: "TrigControl"
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

defmodule Control.Ir do
  def name(_ugen_struct), do: "Control"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:values]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:key, atom, enforce: true)
    field(:value, float, default: 0.1)
    field(:spec, SuperCollider.WarpSpec.t(), enforce: true)
  end
end

defmodule Control.Kr do
  def name(_ugen_struct), do: "Control"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:value]
  def special_index(_ugen_struct), do: 0

  use TypedStruct

  typedstruct do
    field(:key, atom, enforce: true)
    field(:value, float, default: 0.1)
    field(:spec, SuperCollider.WarpSpec.t(), enforce: true)
  end
end

defmodule Control do
  @spec kr(atom, number, atom | SuperCollider.WarpSpec.t()) :: Control.Kr.t()
  def kr(key, value, spec) do
    spec =
      if is_atom(spec) do
        SuperCollider.WarpSpec.get_default(spec)
      else
        spec
      end

    %Control.Kr{key: key, value: value, spec: spec}
  end

  # @spec kr({atom, number}) :: Control.Kr.t()
  # def kr({key, value}) do
  #   kr(key, value, key)
  # end

  @spec kr([{atom, number}]) :: Control.Kr.t()
  def kr([{key, value}]) do
    kr(key, value, key)
  end

  @spec kr({atom, number}, atom | SuperCollider.WarpSpec.t()) :: Control.Kr.t()
  def kr({key, value}, spec) do
    kr(key, value, spec)
  end

  # def kr([{key, value}], spec) do
  #   kr(key, value, spec)
  # end

  @spec ir({atom, number}) :: Control.Ir.t()
  def ir({key, value}) do
    ir(key, value, key)
  end

  def ir([{key, value}]) do
    ir(key, value, key)
  end

  @spec ir(atom, number, atom | SuperCollider.WarpSpec.t()) :: Control.Ir.t()
  def ir(key, value, spec) do
    spec =
      if is_atom(spec) do
        SuperCollider.WarpSpec.get_default(spec)
      else
        spec
      end

    %Control.Ir{key: key, value: value, spec: spec}
  end

  @spec ir([{atom, number}], atom | SuperCollider.WarpSpec.t()) :: Control.Ir.t()
  def ir({key, value}, spec) do
    ir(key, value, spec)
  end

  def ir([{key, value}], spec) do
    ir(key, value, spec)
  end

  def ar(key, value) do
    %Control.Ar{key: key, value: value}
  end

  @spec ar([{atom, number}]) :: Control.Ar.t()

  def ar({key, value}) do
    ar(key, value)
  end

  def ar([{key, value}]) do
    ar(key, value)
  end

  def tr(key, value) do
    %Control.Tr{key: key, value: value}
  end

  @spec tr([{atom, number}]) :: Control.Tr.t()

  def tr({key, value}) do
    tr(key, value)
  end

  def tr([{key, value}]) do
    tr(key, value)
  end
end
