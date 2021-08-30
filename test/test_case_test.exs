defmodule TestCaseTest do
  use ExUnit.Case

  setup do
    {:ok, test_case: TestCase.create(WasRun)}
  end

  test "set up", %{test_case: test_case} do
    test_case = TestCase.run(test_case)
    assert test_case.was_set_up
  end

  test "running", %{test_case: test_case} do
    test_case = TestCase.run(test_case)
    assert test_case.was_run
  end
end
