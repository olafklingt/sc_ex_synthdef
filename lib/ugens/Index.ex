defmodule Index do
  def ar(bufnum \\ nil, inv \\ 0.0) do
  %UGen.Index.Ar{bufnum: bufnum, in: inv}
end
    def kr(bufnum \\ nil, inv \\ 0.0) do
  %UGen.Index.Kr{bufnum: bufnum, in: inv}
end

  def description do
    "Index into a table with a signal"
  end

end
