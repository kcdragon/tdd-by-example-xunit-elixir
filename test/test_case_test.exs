defmodule TestCaseTest do
  use ExUnit.Case

  test "running" do
    test = TestCase.create(&WasRun.test_method/1)
    assert !test.was_run

    test = TestCase.run(test)
    assert test.was_run
  end
end
