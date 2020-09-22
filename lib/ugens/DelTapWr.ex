defmodule DelTapWr do
  def ar(buffer \\ nil, inv \\ nil) do
  %UGen.DelTapWr.Ar{buffer: buffer, in: inv}
end
    def kr(buffer \\ nil, inv \\ nil) do
  %UGen.DelTapWr.Kr{buffer: buffer, in: inv}
end

end
