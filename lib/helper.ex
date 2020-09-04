defmodule SCSynthDef.Helper do
  def do_n_times(n, what, fun) do
    Enum.reduce(1..n, what, fn _n, what -> fun.(what) end)
  end
end
