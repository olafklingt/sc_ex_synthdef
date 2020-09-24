defmodule IndexL do
  def ar(bufnum \\ nil, inv \\ 0.0) do
  %UGen.IndexL.Ar{bufnum: bufnum, in: inv}
end
    def kr(bufnum \\ nil, inv \\ 0.0) do
  %UGen.IndexL.Kr{bufnum: bufnum, in: inv}
end

  def description do
    "Index into a table with a signal, linear interpolated"
  end

end
