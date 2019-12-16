defmodule GenstageCsvParserTest do
  use ExUnit.Case
  doctest GenstageCsvParser

  test "it returns number of processed csv rows" do
    assert GenstageCsvParser.parse_csv("small.csv") == 4
  end
end
