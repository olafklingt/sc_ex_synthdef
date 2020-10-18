defmodule SCSynthDef do
  @spec new(String.t()) :: SCSynthDef.Struct.t()
  def new(name) do
    %SCSynthDef.Struct{name: name}
  end

  @spec new(String.t(), map) :: SCSynthDef.Struct.t()
  def new(name, ugen) do
    SCSynthDef.Maker.add_ugen(%SCSynthDef.Struct{name: name}, ugen)
  end

  defp fade_in_env() do
    time = Control.kr(transition_time: 0.0)
    freq = UGen.div(1.0, time)
    Slew.kr(Delay2.kr(DC.kr(1.0)), freq, freq)
  end

  defp xout_with_ugen_rate(env, ugen) do
    case apply(ugen.__struct__, :rate, [ugen]) do
      2 ->
        XOut.ar(Control.ir(out: 0), env, ugen)

      1 ->
        XOut.kr(Control.ir(out: 0), env, ugen)

      _ ->
        raise "replace_fade_def doesn't make sense with rates different from ar or kr ... i think. #{}  #{
                inspect(ugen)
              }"
    end
  end

  # def trigger_at_end_fade_def(name, ugen) do
  #   id = Control.kr(:replace_id, -2, :out)
  #   env = fade_in_env()
  #   def = new(name, xout_with_ugen_rate(env, ugen))
  #   add_ugen(def, SendReply.kr(UGen.sub(env, 0.999999), "/fade_end_reply", 0, id))
  # end

  def replace_fade_wrapper(ugen) do
    id = Control.ir(:replace_id, -2, :out)
    env = fade_in_env()
    [xout_with_ugen_rate(env, ugen), Free.kr(UGen.sub(env, 0.999999), id)]
  end

  def amp_wrapper(ugen) do
    ugen
    |> UGen.mul(Control.kr(amp: 1))
  end

  def linlin_wrapper(ugen) do
    in_min = Control.kr(:in_min, 0, :any)
    in_max = Control.kr(:in_max, 1, :any)
    min = Control.kr(:min, 0, :any)
    max = Control.kr(:max, 1, :any)
    in_range = UGen.sub(in_max, in_min)
    range = UGen.sub(max, min)

    ugen
    |> UGen.sub(in_min)
    |> UGen.div(in_range)
    |> UGen.mul(range)
    |> UGen.add(min)
  end

  def cntrl_to_minmax_wrapper(ugen) do
    min = Control.kr(:min, 0, :any)
    max = Control.kr(:max, 1, :any)
    range = UGen.sub(max, min)

    ugen
    |> UGen.mul(range)
    |> UGen.add(min)
  end

  def sig_to_minmax_wrapper(ugen) do
    min = Control.kr(:min, 0, :any)
    max = Control.kr(:max, 1, :any)
    range = UGen.sub(max, min)

    ugen
    |> UGen.add(1)
    |> UGen.div(2)
    |> UGen.mul(range)
    |> UGen.add(min)
  end

  def muladd_wrapper(ugen) do
    ugen
    |> UGen.mul(Control.kr(:mul, 1, :any))
    |> UGen.add(Control.kr(:add, 0, :any))
  end

  # def replace_fade_def(name, ugen) do
  #   IO.puts("replace_fade_def is deprecated")
  #   id = Control.kr(:replace_id, -2, :out)
  #   env = fade_in_env()
  #   def = new(name, xout_with_ugen_rate(env, ugen))
  #   add_ugen(def, Free.kr(UGen.sub(env, 0.999999), id))
  # end

  def add_ugen(def, ugen) do
    SCSynthDef.Maker.add_ugen(def, ugen)
  end

  @spec send_def_to_server(String.t(), map, atom | nil) :: map
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

  @spec encode_to_bytes(SCSynthDef.Struct.t()) :: binary
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
