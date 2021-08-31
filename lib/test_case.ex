defmodule TestCase do
  defstruct [:module, :log]

  def create(module) do
    %TestCase{module: module}
  end

  def run(test) do
    test = apply(test.module, :set_up, [test])
    test = apply(test.module, :test, [test])
    apply(test.module, :tear_down, [test])
  end
end
