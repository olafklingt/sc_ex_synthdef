defmodule SCSynthDef.Struct do
  use TypedStruct

  typedstruct do
    field(:name, charlist(), enforce: false)
    field(:number_of_constants, integer, default: 0)
    field(:constants, list, default: [])
    field(:number_of_parameters, integer, default: 0)
    field(:parameters, list, default: [])
    field(:number_of_parameter_names, integer, default: 0)
    field(:parameter_names, list, default: [])
    field(:number_of_ugens, integer, default: 0)
    field(:ugens, list, default: [])
    field(:number_of_variants, integer, default: 0)
    field(:variants, list, default: [])
    field(:metadata, keyword, default: [])
  end
end

defmodule SCSynthDef.Struct.SCSDParameterName do
  use TypedStruct

  typedstruct do
    field(:name, charlist(), enforce: false)
    field(:id, integer, enforce: false)
  end
end

defmodule SCSynthDef.Struct.SCSDUGen do
  use TypedStruct

  typedstruct do
    field(:name, charlist(), enforce: false)
    field(:rate, integer, enforce: false)
    field(:number_of_inputs, integer, enforce: false)
    field(:number_of_outputs, integer, enforce: false)
    field(:special_index, integer, enforce: false)
    field(:inputs, list, default: [])
    field(:outputs, list, default: [])
  end
end

defmodule SCSynthDef.Struct.SCSDInput do
  use TypedStruct

  typedstruct do
    field(:index_of_ugen, integer, enforce: false)
    field(:index_of_output, integer, enforce: false)
  end
end

defmodule SCSynthDef.Struct.SCSDVariant do
  use TypedStruct

  typedstruct do
    field(:name, charlist(), enforce: false)
    field(:parameters, list, default: [])
  end
end
