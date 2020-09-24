defmodule Dreset do
  def new(inv \\ nil, reset \\ 0.0) do
  %UGen.Dreset.New{in: inv, reset: reset}
end

  def description do
    "demand rate reset"
  end

end
