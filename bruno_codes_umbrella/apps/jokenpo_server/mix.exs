defmodule JokenpoServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :jokenpo_server,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {JokenpoServer.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jokenpo, in_umbrella: true},
      {:elixir_uuid, "~> 1.2"},
      {:mix_test_watch, "~> 1.0", only: :dev, runtime: false}
    ]
  end
end
