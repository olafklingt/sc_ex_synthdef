defmodule Dunique do
  def new(source \\ nil, maxBufferSize \\ 1024, protected \\ nil) do
  %UGen.Dunique.New{source: source, maxBufferSize: maxBufferSize, protected: protected}
end

  def description do
    "Return the same unique series of values for several demand streams"
  end

end
