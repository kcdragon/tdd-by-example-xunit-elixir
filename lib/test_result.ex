defmodule TestResult do
  defstruct [run_count: 0, failed_count: 0, test_case: nil]

  def test_started(test_result) do
    %{test_result | run_count: test_result.run_count + 1}
  end

  def test_failed(test_result) do
    %{test_result | failed_count: test_result.failed_count + 1}
  end

  def summary(test_result) do
    "#{test_result.run_count} run, #{test_result.failed_count} failed"
  end
end
