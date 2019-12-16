defmodule GenstageCsvParser.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # worker(GenstageCsvParser.Producer, [0]),
      # worker(GenstageCsvParser.ProducerConsumer, []),
      # worker(GenstageCsvParser.Consumer, [])
    ]

    opts = [strategy: :one_for_one, name: GenstageCsvParser.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
