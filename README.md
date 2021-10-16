# ScExSynthdef

ExSCSynthDef An experimental SynthDef writer that treats UGens as functions. Written in Elixir.

`SCSynthDef.Reader` reads SynthDef binaries

`SCSynthDef.Writer` writes SynthDef binaries from SCSynthDef data structure

`SCSynthDef.Maker` create the SCSynthDef data structure from trees of UGens

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sc_ex_synthdef` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sc_ex_synthdef, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/sc_ex_synthdef](https://hexdocs.pm/sc_ex_synthdef).

