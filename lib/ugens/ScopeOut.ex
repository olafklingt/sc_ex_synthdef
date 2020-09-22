defmodule ScopeOut do
  def ar(inputArray \\ nil, bufnum \\ 0) do
  %UGen.ScopeOut.Ar{inputArray: inputArray, bufnum: bufnum}
end
    def kr(inputArray \\ nil, bufnum \\ 0) do
  %UGen.ScopeOut.Kr{inputArray: inputArray, bufnum: bufnum}
end

end
