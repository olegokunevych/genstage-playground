defmodule GenstageCsvParser.MixProject do
  use Mix.Project

  def project do
    [
      app: :genstage_csv_parser,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {GenstageCsvParser.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:gen_stage, "~> 0.11"},
      # {:nimble_csv, "~> 0.6"},
      {:flow, "~> 0.14.0"},
      {:csv, "~> 2.0.0"},
    ]
  end
end
