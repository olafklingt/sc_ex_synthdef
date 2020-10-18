defmodule SendReply do
  def ar(trig \\ 0.0, cmdName \\ nil, values \\ nil, replyID \\ -1) do
  %UGen.SendReply.Ar{trig: trig, cmdName: cmdName, values: values, replyID: replyID}
end
    def kr(trig \\ 0.0, cmdName \\ nil, values \\ nil, replyID \\ -1) do
  %UGen.SendReply.Kr{trig: trig, cmdName: cmdName, values: values, replyID: replyID}
end

  def description do
    "Send an array of values from the server to all notified clients"
  end

end
