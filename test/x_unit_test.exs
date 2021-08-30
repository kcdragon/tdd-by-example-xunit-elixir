defmodule XUnitTest do
  use ExUnit.Case
  doctest XUnit

  test "was run" do
    test = TestCase.create(&WasRun.test_method/1)
    IO.puts("Was Run: #{test.was_run}")
    test = TestCase.run(test)
    IO.puts("Was Run: #{test.was_run}")
  end
end
