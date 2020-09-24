defmodule SCSynthDef do
  @spec new(String.t()) :: SCSynthDef.Struct.t()
  def new(name) do
    %SCSynthDef.Struct{name: name}
  end

  # here I could also add some default output variants
  # def oneShotEnv(ugen) do end
  # def gateEnvEnd(ugen) do end
  # def gateEnv(ugen) do end

  @spec new(String.t(), any) :: SCSynthDef.Struct.t()
  def new(name, ugen) do
    SCSynthDef.Maker.add_ugen(%SCSynthDef.Struct{name: name}, ugen)
  end

  def add_ugen(def, ugen) do
    SCSynthDef.Maker.add_ugen(def, ugen)
  end

  @spec send_def_to_server(String.t(), map, atom | nil) :: integer()
  def send_def_to_server(name, ugen, server_name \\ nil) do
    def = SCSynthDef.new(name, ugen)
    bytes = SCSynthDef.encode_to_bytes(def)
    SCSoundServer.send_synthdef_sync(bytes, server_name)
    def
  end

  def read_file(path) do
    SCSynthDef.Reader.read(path)
  end

  def decode_from_bytes(bytes) do
    SCSynthDef.Reader.byte_decode(bytes)
  end

  @spec encode_to_bytes(map) :: binary
  def encode_to_bytes(def) do
    SCSynthDef.Writer.byte_encode(def)
  end

  defp get_control_ugens(def) do
    {def,
     Enum.filter(def.ugens, fn x ->
       Enum.member?(["Control", "AudioControl", "TrigControl"], x.name)
     end)}
  end

  defp get_control_control_ugens(def) do
    {def,
     Enum.filter(def.ugens, fn x ->
       Enum.member?(["Control", "TrigControl"], x.name)
     end)}
  end

  defp get_audio_control_ugens(def) do
    {def, Enum.filter(def.ugens, fn x -> "AudioControl" == x.name end)}
  end

  defp make_input_specs({def, control_ugens}) do
    Enum.map(control_ugens, fn control_ugen ->
      SCSynthDef.Info.InputSpec.make_input_spec(def, control_ugen)
    end)
  end

  def get_inputs(def) do
    def
    |> get_control_ugens
    |> make_input_specs
  end

  def get_audio_inputs(def) do
    def
    |> get_audio_control_ugens
    |> make_input_specs
  end

  def get_control_inputs(def) do
    def
    |> get_control_control_ugens
    |> make_input_specs
  end

  def get_out_controls(def) do
    def
    |> SCSynthDef.Maker.get_out_ugens()
    |> SCSynthDef.Maker.find_out_bus_input_specs()
  end
end
