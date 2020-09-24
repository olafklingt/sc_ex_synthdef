defmodule MostChange do
  def ar(a \\ 0.0, b \\ 0.0) do
  %UGen.MostChange.Ar{a: a, b: b}
end
    def kr(a \\ 0.0, b \\ 0.0) do
  %UGen.MostChange.Kr{a: a, b: b}
end

  def description do
    "Output most changed."
  end

end
