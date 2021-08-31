defmodule TestCase do
  defstruct [:module, :method, :log]

  def create(module, method) do
    %TestCase{module: module, method: method}
  end

  def run(test_case) do
    test_result = %TestResult{}
    test_result = TestResult.test_started(test_result)
    test_case = apply(test_case.module, :set_up, [test_case])

    {test_case, test_result} = try do
      {apply(test_case.module, test_case.method, [test_case]), test_result}
    rescue
      e -> {test_case, TestResult.test_failed(test_result)}
    end

    test_case = apply(test_case.module, :tear_down, [test_case])
    %{test_result | test_case: test_case}
  end
end
