defmodule WasRun do
  def set_up(test) do
    %{test | was_run: nil, was_set_up: 1}
  end

  def test(test) do
    %{test | was_run: 1}
  end
end
