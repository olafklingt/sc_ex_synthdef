defmodule BHiShelf do
  def ar(inv \\ nil, freq \\ 1.2e3, rs \\ 1.0, db \\ 0.0) do
  %UGen.BHiShelf.Ar{in: inv, freq: freq, rs: rs, db: db}
end

  def description do
    "Hi Shelf"
  end

end
