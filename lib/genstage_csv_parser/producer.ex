defmodule GenstageCsvParser.Producer do
  use GenStage

  def start_link(initial \\ 0) do
    GenStage.start_link(__MODULE__, initial, name: __MODULE__)
  end

  def init(counter), do: {:producer, counter}

  def handle_demand(demand, state) do
    events = File.stream!("large.csv")
    |> CSV.decode!(separator: ?|, headers: true)
    |> Stream.map(&String.trim(&1))
    |> Enum.to_list()

    # events = Enum.to_list(state..(state + demand - 1))
    {:noreply, events, state + demand}
  end
end
