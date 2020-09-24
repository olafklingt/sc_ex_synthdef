defmodule Done do
  def kr(src \\ nil) do
  %UGen.Done.Kr{src: src}
end

  def description do
    "Monitors another UGen to see when it is finished"
  end

end
