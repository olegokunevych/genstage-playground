defmodule Task4 do
  def initials(name) when is_nil(name) or byte_size(name) == 0 do "?" end
  def initials(name) do
    name
    |> String.split(" ")
    |> Enum.slice(0..1)
    |> Enum.map(&String.at(&1, 0))
    |> Enum.join
  end
end
