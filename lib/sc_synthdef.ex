defmodule SCSynthDef do
  def new() do
    %SCSynthDef.Struct{}
  end

  # here I could also add some default output variants
  # def oneShotEnv(ugen) do end
  # def gateEnvEnd(ugen) do end
  # def gateEnv(ugen) do end

  def new(name, ugen) do
    SCSynthDef.Maker.add_ugen(%SCSynthDef.Struct{name: name}, ugen)
  end

  def add_ugen(def, ugen) do
    SCSynthDef.Maker.add_ugen(def, ugen)
  end

  def read_file(path) do
    SCSynthDef.Reader.read(path)
  end

  def decode_from_bytes(bytes) do
    SCSynthDef.Reader.byte_decode(bytes)
  end

  def encode_to_bytes(def) do
    SCSynthDef.Writer.byte_encode(def)
  end
end
