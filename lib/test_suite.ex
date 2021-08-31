defmodule TestSuite do
  defstruct [test_cases: []]

  def add_test_case(test_suite, test_case) do
    %{test_suite | test_cases: test_suite.test_cases ++ [test_case]}
  end

  def run(test_suite) do
    test_suite.test_cases |>
      Enum.reduce(%TestResult{},
        fn test_case, test_result ->
          TestCase.run(test_case, test_result)
        end
      )
  end
end
