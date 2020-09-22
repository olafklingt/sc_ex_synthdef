defmodule RecordBuf do
  def ar(inputArray \\ nil, bufnum \\ 0, offset \\ 0.0, recLevel \\ 1.0, preLevel \\ 0.0, run \\ 1.0, loop \\ 1.0, trigger \\ 1.0, doneAction \\ 0) do
  %UGen.RecordBuf.Ar{inputArray: inputArray, bufnum: bufnum, offset: offset, recLevel: recLevel, preLevel: preLevel, run: run, loop: loop, trigger: trigger, doneAction: doneAction}
end
    def kr(inputArray \\ nil, bufnum \\ 0, offset \\ 0.0, recLevel \\ 1.0, preLevel \\ 0.0, run \\ 1.0, loop \\ 1.0, trigger \\ 1.0, doneAction \\ 0) do
  %UGen.RecordBuf.Kr{inputArray: inputArray, bufnum: bufnum, offset: offset, recLevel: recLevel, preLevel: preLevel, run: run, loop: loop, trigger: trigger, doneAction: doneAction}
end

end
