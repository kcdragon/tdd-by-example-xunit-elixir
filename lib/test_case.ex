defmodule TestCase do
  defstruct [:module, :was_run, :was_set_up]

  def create(module) do
    %TestCase{module: module}
  end

  def run(test) do
    test = apply(test.module, :set_up, [test])
    apply(test.module, :test, [test])
  end
end
