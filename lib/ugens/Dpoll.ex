defmodule Dpoll do
  def new(inv \\ nil, label \\ nil, run \\ 1, trigid \\ -1) do
  %UGen.Dpoll.New{in: inv, label: label, run: run, trigid: trigid}
end

  def description do
    "Print the current output value of a demand rate UGen"
  end

end
