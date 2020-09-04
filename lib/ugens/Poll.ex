defmodule Poll do
  def ar(trig \\ nil, inv \\ nil, label \\ nil, trigid \\ -1) do
  %Poll.Ar{trig: trig, in: inv, label: label, trigid: trigid}
end
    def kr(trig \\ nil, inv \\ nil, label \\ nil, trigid \\ -1) do
  %Poll.Kr{trig: trig, in: inv, label: label, trigid: trigid}
end

end
