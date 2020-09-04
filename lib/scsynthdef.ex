defmodule SCSynthDef do
  use TypedStruct

  typedstruct do
    field(:name, charlist(), enforce: false)
    field(:number_of_constants, integer, default: 0)
    field(:constants, List.t(), default: [])
    field(:number_of_parameters, integer, default: 0)
    field(:parameters, List.t(), default: [])
    field(:number_of_parameter_names, integer, default: 0)
    field(:parameter_names, List.t(), default: [])
    field(:number_of_ugens, integer, default: 0)
    field(:ugens, List.t(), default: [])
    field(:number_of_variants, integer, default: 0)
    field(:variants, List.t(), default: [])
  end
end

defmodule SCSynthDef.SCSDParameterName do
  use TypedStruct

  typedstruct do
    field(:name, charlist(), enforce: false)
    field(:id, integer, enforce: false)
  end
end

defmodule SCSynthDef.SCSDUGen do
  use TypedStruct
  import SCSynthDef

  typedstruct do
    field(:name, charlist(), enforce: false)
    field(:rate, integer, enforce: false)
    field(:number_of_inputs, integer, enforce: false)
    field(:number_of_outputs, integer, enforce: false)
    field(:special_index, integer, enforce: false)
    field(:inputs, List.t(), default: [])
    field(:outputs, List.t(), default: [])
  end
end

defmodule SCSynthDef.SCSDInput do
  use TypedStruct

  typedstruct do
    field(:index_of_ugen, integer, enforce: false)
    field(:index_of_output, integer, enforce: false)
  end
end

defmodule SCSynthDef.SCSDVariant do
  use TypedStruct
  import SCSynthDef

  typedstruct do
    field(:name, charlist(), enforce: false)
    field(:parameters, List.t(), default: [])
  end
end
