defmodule BufWr do
  def ar(inputArray \\ nil, bufnum \\ 0, phase \\ 0.0, loop \\ 1.0) do
  %UGen.BufWr.Ar{inputArray: inputArray, bufnum: bufnum, phase: phase, loop: loop}
end
    def kr(inputArray \\ nil, bufnum \\ 0, phase \\ 0.0, loop \\ 1.0) do
  %UGen.BufWr.Kr{inputArray: inputArray, bufnum: bufnum, phase: phase, loop: loop}
end

  def description do
    "Buffer writing oscillator."
  end

end
