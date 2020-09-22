defmodule Select do
  def ar(which \\ nil, array \\ nil) do
  %UGen.Select.Ar{which: which, array: array}
end
    def kr(which \\ nil, array \\ nil) do
  %UGen.Select.Kr{which: which, array: array}
end

end
