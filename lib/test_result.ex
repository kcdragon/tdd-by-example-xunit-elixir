defmodule TestResult do
  defstruct [run_count: 0, summary: "1 run, 0 failed", test_case: nil]

  def test_started(result) do
    %{result | run_count: result.run_count + 1}
  end

  def summary(result) do
    "#{result.run_count} run, 0 failed"
  end
end
