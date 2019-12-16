defmodule GenstageCsvParser do
  @moduledoc """
  Documentation for GenstageCsvParser.
  """

  def parse_csv(file) do
    File.stream!(file, read_ahead: 100_000)
    |> CSV.decode!(separator: ?,, headers: true)
    |> Flow.from_enumerable()
    |> Flow.filter(fn
      %{"Timestamp": _} -> false
      _ -> true
    end)
    |> Flow.partition()
    # |> Flow.reduce(fn -> %{} end, fn row, _ ->
    #   Map.update(row, "Timestamp", 0, (fn ts ->
    #     ts
    #     |> String.to_integer
    #     |> DateTime.from_unix!
    #   end))
    # end)
    # |> Enum.to_list
    |> Enum.count
  end
end
