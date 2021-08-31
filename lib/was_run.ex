defmodule WasRun do
  def set_up(test) do
    %{test | log: "set_up "}
  end

  def test(test) do
    %{test | log: "#{test.log}test "}
  end

  def tear_down(test) do
    %{test | log: "#{test.log}tear_down "}
  end
end
