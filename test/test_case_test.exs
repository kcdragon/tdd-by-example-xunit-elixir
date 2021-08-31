defmodule TestCaseTest do
  use ExUnit.Case

  test "template method" do
    test_case = TestCase.create(WasRun)
    test_case = TestCase.run(test_case)
    assert test_case.log == "set_up test tear_down "
  end
end
