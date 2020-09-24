defmodule FreeSelfWhenDone do
  def kr(src \\ nil) do
  %UGen.FreeSelfWhenDone.Kr{src: src}
end

  def description do
    "Free the enclosing synth when a UGen is finished"
  end

end
