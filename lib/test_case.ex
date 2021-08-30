defmodule TestCase do
  defstruct [:test_method, :was_run]

  def create(function) do
    %TestCase{test_method: function}
  end

  def run(test) do
    test.test_method.(test)
  end
end
