defmodule TestCaseTest do
  use ExUnit.Case

  test "template method" do
    test_case = TestCase.create(WasRun, :test_method)
    test_result = TestCase.run(test_case)
    test_case = test_result.test_case
    assert test_case.log == "set_up test tear_down "
  end

  test "result" do
    test_case = TestCase.create(WasRun, :test_method)
    test_result = TestCase.run(test_case)
    assert TestResult.summary(test_result) == "1 run, 0 failed"
  end

  test "failed" do
    test_case = TestCase.create(WasRun, :test_broken_method)
    test_result = TestCase.run(test_case)
    assert TestResult.summary(test_result) == "1 run, 1 failed"
  end

  test "failed result formatting" do
    test_result = %TestResult{}
    test_result = TestResult.test_started(test_result)
    test_result = TestResult.test_failed(test_result)
    assert TestResult.summary(test_result) == "1 run, 1 failed"
  end
end
