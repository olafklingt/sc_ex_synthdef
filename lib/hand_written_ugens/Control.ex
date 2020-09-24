defmodule Control.Ar do
  def name(_ugen_struct), do: "AudioControl"
  def rate(_ugen_struct), do: 2
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [2]
  def args(_ugen_struct), do: [:value]
  def special_index(_ugen_struct), do: 0

  def description do
    "Audio rate synth parameter. It can be set to a float value like 55.5 or a bus string like \"a10\"."
  end

  use TypedStruct

  typedstruct do
    field(:key, atom, enforce: true)
    field(:value, float, default: 0.1)
    field(:spec, SuperCollider.WarpSpec.t(), enforce: true)
  end
end

defmodule Control.Tr do
  def name(_ugen_struct), do: "TrigControl"
  def rate(_ugen_struct), do: 1
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [1]
  def args(_ugen_struct), do: [:value]
  def special_index(_ugen_struct), do: 0

  def description do
    "Trigger rate synth parameter. It can be set to a float value like 1 or a bus string like \"c10\". It resets to 0 after one block."
  end

  use TypedStruct

  typedstruct do
    field(:key, atom, enforce: true)
    field(:value, float, default: 0.1)
    field(:spec, SuperCollider.WarpSpec.t(), enforce: true)
  end
end

defmodule Control.Ir do
  def name(_ugen_struct), do: "Control"
  def rate(_ugen_struct), do: 0
  def number_of_outputs(_ugen_struct), do: 1
  def outputs(_ugen_struct), do: [0]
  def args(_ugen_struct), do: [:value]
  def special_index(_ugen_struct), do: 0

  def description do
    "Init rate synth parameter. It can only be set at Synth creation to a float value like 1 or a bus string like \"c10\". It doesn't change after the first block."
  end

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

  def description do
    "Control rate synth parameter. It can be set to a float value like 55.5 or a bus string like \"c10\"."
  end

  use TypedStruct

  typedstruct do
    field(:key, atom, enforce: true)
    field(:value, float, default: 0.1)
    field(:spec, SuperCollider.WarpSpec.t(), enforce: true)
  end
end

defmodule Control do
  @spec kr(atom, number, atom | SuperCollider.WarpSpec.t(), boolean) :: Control.Kr.t()
  def kr(key, value, spec, strict \\ false) do
    spec =
      if is_atom(spec) do
        SuperCollider.WarpSpec.get_default(spec)
      else
        spec
      end

    if(strict) do
      control = %Control.Kr{key: key, value: value, spec: spec}
      Clip.kr(control, spec.minval, spec.maxval)
    else
      %Control.Kr{key: key, value: value, spec: spec}
    end
  end

  # @spec kr([{atom, number}, {atom, boolean}]) :: Control.Kr.t()
  def kr([{key, value}, {:strict, strict}]) do
    kr(key, value, key, strict)
  end

  # @spec kr([{atom, number}]) :: Control.Kr.t()
  def kr([{key, value}]) do
    kr(key, value, key)
  end

  @spec ir(atom, number, atom | SuperCollider.WarpSpec.t(), boolean) :: Control.Ir.t()
  def ir(key, value, spec, strict \\ false) do
    spec =
      if is_atom(spec) do
        SuperCollider.WarpSpec.get_default(spec)
      else
        spec
      end

    if(strict) do
      control = %Control.Ir{key: key, value: value, spec: spec}
      Clip.ir(control, spec.minval, spec.maxval)
    else
      %Control.Ir{key: key, value: value, spec: spec}
    end
  end

  # @spec ir([{atom, number}]) :: Control.Ir.t()
  def ir([{key, value}]) do
    ir(key, value, key)
  end

  # @spec ir([{atom, number}, {atom, boolean}]) :: Control.Ir.t()
  def ir([{key, value}, strict: strict]) do
    ir(key, value, key, strict)
  end

  @spec ar(atom, number, atom | SuperCollider.WarpSpec.t(), boolean) :: Control.Ar.t()
  def ar(key, value, spec, strict \\ false) do
    spec =
      if is_atom(spec) do
        SuperCollider.WarpSpec.get_default(spec)
      else
        spec
      end

    if(strict) do
      control = %Control.Ar{key: key, value: value, spec: spec}
      Clip.ar(control, spec.minval, spec.maxval)
    else
      %Control.Ar{key: key, value: value, spec: spec}
    end
  end

  # @spec ar([{atom, number}]) :: Control.Ar.t()
  def ar([{key, value}]) do
    ar(key, value, key)
  end

  # @spec ar([{atom, number}, {atom, boolean}]) :: Control.Ar.t()
  def ar([{key, value}, strict: strict]) do
    ar(key, value, key, strict)
  end

  @spec tr(atom, number, atom | SuperCollider.WarpSpec.t(), boolean) :: Control.Tr.t()
  def tr(key, value, spec, strict \\ false) do
    spec =
      if is_atom(spec) do
        SuperCollider.WarpSpec.get_default(spec)
      else
        spec
      end

    if(strict) do
      control = %Control.Tr{key: key, value: value, spec: spec}
      Clip.kr(control, spec.minval, spec.maxval)
    else
      %Control.Tr{key: key, value: value, spec: spec}
    end
  end

  # @spec tr([{atom, number}]) :: Control.Tr.t()
  def tr([{key, value}]) do
    tr(key, value, key)
  end

  # @spec tr([{atom, number}, {atom, boolean}]) :: Control.Tr.t()
  def tr([{key, value}, strict: strict]) do
    tr(key, value, key, strict)
  end

  def description do
    "Control, Audio, Trigger, and Init rate synth parameter. It can be set to a float value like 55.5 or a bus string like \"c10\" or \"a10\"."
  end
end
