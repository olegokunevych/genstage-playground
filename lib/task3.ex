defmodule Task3 do
  @moduledoc """
  Documentation for Task3.
  """

  # Compact solution, code complexity O(n^2) as it loops through input data 2 times
  def calculate_sum_one(arr) do
    arr |> List.flatten |> Enum.sum
  end

  # Solution that uses recursion with help of pattern matching. Code complexity O(n). This solution is more efficient as it loops over input once
  def calculate_sum_three([]), do: 0
  def calculate_sum_three(arr) when is_list(arr) do
    arr
    |> Enum.reduce(0, fn x, acc -> acc + calculate_sum_three(x) end)
  end
  def calculate_sum_three(el), do: el
end
