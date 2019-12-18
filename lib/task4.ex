defmodule Task4 do
  def initials(name) when is_nil(name) or byte_size(name) == 0 do "?" end
  def initials(name) do
    name
    |> String.split(" ")
    |> Enum.map(&String.at(&1, 0))
    |> Enum.join
  end
end
