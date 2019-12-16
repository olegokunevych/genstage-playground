defmodule GenstageCsvParser.ProducerConsumer do
  use GenStage

  require Integer

  def start_link do
    GenStage.start_link(__MODULE__, :any_state, name: __MODULE__)
  end

  def init(state) do
    {:producer_consumer, state, subscribe_to: [GenstageCsvParser.Producer]}
  end

  def handle_events(events, _from, state) do
    {:noreply, events, state}
  end
end
