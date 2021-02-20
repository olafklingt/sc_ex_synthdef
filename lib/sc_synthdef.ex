defmodule SCSynthDef do
  @spec new(String.t()) :: SCSynthDef.Struct.t()
  def new(name) do
    %SCSynthDef.Struct{name: name}
  end

  @spec new(String.t(), map, keyword) :: SCSynthDef.Struct.t()
  def new(name, ugen, metadata \\ []) do
    SCSynthDef.Maker.add_ugen(%SCSynthDef.Struct{name: name, metadata: metadata}, ugen)
  end

  defp fade_in_env() do
    time = Control.kr(_transition_time: 0.0)
    freq = UGen.div(1.0, time)
    Slew.kr(Delay2.kr(DC.kr(1.0)), freq, freq)
  end

  defp xout_with_ugen_rate(env, ugen) do
    case apply(ugen.__struct__, :rate, [ugen]) do
      2 ->
        XOut.ar(Control.ir(_out: 0), env, ugen)

      1 ->
        XOut.kr(Control.ir(_out: 0), env, ugen)

      _ ->
        raise "replace_fade_def doesn't make sense with rates different from ar or kr ... i think.  #{
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
    id = Control.ir(:_replace_id, -2, :_out)
    env = fade_in_env()
    [xout_with_ugen_rate(env, ugen), Free.kr(UGen.sub(env, 0.999999), id)]
  end

  def amp_wrapper(ugen) do
    ugen
    |> UGen.mul(Control.kr(amp: 1.0))
  end

  def linlin_wrapper(ugen, in_spec, out_spec) do
    in_min = Control.kr(:in_min, 0.0, in_spec)
    in_max = Control.kr(:in_max, 1.0, in_spec)
    min = Control.kr(:min, 0.0, out_spec)
    max = Control.kr(:max, 1.0, out_spec)
    in_range = UGen.sub(in_max, in_min)
    range = UGen.sub(max, min)

    ugen
    |> UGen.sub(in_min)
    |> UGen.div(in_range)
    |> UGen.mul(range)
    |> UGen.add(min)
  end

  def cntrl_to_minmax_wrapper(ugen, spec_or_atom) do
    spec =
      if is_atom(spec_or_atom) do
        SuperCollider.WarpSpec.get_default(spec_or_atom)
      else
        spec_or_atom
      end

    min = Control.kr(:min, spec.minval, spec)
    max = Control.kr(:max, spec.maxval, spec)
    range = UGen.sub(max, min)

    ugen
    |> UGen.mul(range)
    |> UGen.add(min)
  end

  def sig_to_minmax_wrapper(ugen, spec_or_atom) do
    ugen
    |> UGen.add(1)
    |> UGen.div(2)
    |> cntrl_to_minmax_wrapper(spec_or_atom)
  end

  def muladd_wrapper(ugen, spec) do
    ugen
    |> UGen.mul(Control.kr(:mul, 1.0, spec))
    |> UGen.add(Control.kr(:add, 0.0, spec))
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

  @spec send_def_to_server(String.t(), map, keyword, atom | nil) :: map
  def send_def_to_server(name, ugen, metadata \\ [], server_name \\ nil) do
    def = SCSynthDef.new(name, ugen, metadata)
    bytes = SCSynthDef.encode_to_bytes(def)

    if(byte_size(bytes) > 16383) do
      # if(byte_size(bytes) > 0) do
      dir = System.tmp_dir!()
      tmp_file = Path.join(dir, name)
      File.write!(tmp_file, bytes)
      IO.puts("send_def_to_server writes def file \"#{inspect(tmp_file)}\" and add that: #{name}")
      SCSoundServer.load_synthdef_sync(tmp_file, server_name)
    else
      SCSoundServer.send_synthdef_sync(bytes, server_name)
    end

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
