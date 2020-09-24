defmodule CheckBadValues do
  def ar(inv \\ 0.0, id \\ 0, post \\ 2) do
  %UGen.CheckBadValues.Ar{in: inv, id: id, post: post}
end
    def kr(inv \\ 0.0, id \\ 0, post \\ 2) do
  %UGen.CheckBadValues.Kr{in: inv, id: id, post: post}
end

  def description do
    "Test for infinity, not-a-number, and denormals"
  end

end
