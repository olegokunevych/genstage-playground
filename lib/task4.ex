defmodule Task4 do
  def initials(nil) do "?" end
  def initials("") do "?" end
  def initials(name) do
    name
    |> String.split(" ")
    |> Enum.map(fn(x) -> String.first(x) end)
    |> Enum.join
  end
end
