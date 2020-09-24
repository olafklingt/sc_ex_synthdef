defmodule DelTapWr do
  def ar(buffer \\ nil, inv \\ nil) do
  %UGen.DelTapWr.Ar{buffer: buffer, in: inv}
end
    def kr(buffer \\ nil, inv \\ nil) do
  %UGen.DelTapWr.Kr{buffer: buffer, in: inv}
end

  def description do
    "Write to a buffer for a DelTapRd UGen"
  end

end
