defmodule WasRun do
  def test_method(test) do
    %{test | was_run: 1}
  end
end
