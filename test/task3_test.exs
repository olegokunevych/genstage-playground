defmodule Task3Test do
  use ExUnit.Case
  doctest Task3

  test "calculate first [1, [1, 2, [4]]]" do
    assert Task3.calculate_sum_one([1, [1, 2, [4]]]) == 8
  end

  test "calculate three [1, [1, 2, [4]]]" do
    assert Task3.calculate_sum_three([1, [1, 2, [4]]]) == 8
  end
end
