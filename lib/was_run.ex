defmodule WasRun do
  def set_up(test) do
    %{test | log: "set_up "}
  end

  def test_method(test) do
    %{test | log: "#{test.log}test "}
  end

  def test_broken_method(test) do
    raise "broken!"
  end

  def tear_down(test) do
    %{test | log: "#{test.log}tear_down "}
  end
end
