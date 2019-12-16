defmodule GenstageCsvParser.Consumer do
  use GenStage

  def start_link do
    GenStage.start_link(__MODULE__, :state_doesnt_matter)
  end

  def init(state) do
    {:consumer, state, subscribe_to: [GenstageCsvParser.ProducerConsumer]}
  end

  def handle_events(events, _from, state) do
    IO.inspect(List.last(events))

    events
    |> Stream.filter(fn
      ["Timestamp" | _] -> false
      [_, "NaN" | _] -> false
      _ -> true
    end)

    {:noreply, [], state}
  end
end
