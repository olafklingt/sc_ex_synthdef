defmodule TrigControl do
  def ir(values \\ nil) do
  %UGen.TrigControl.Ir{values: values}
end
    def kr(values \\ nil) do
  %UGen.TrigControl.Kr{values: values}
end

  def description do
    "FIXME: TrigControl purpose."
  end

end
