defmodule BrunoCodes.Umbrella.MixProject do
  use Mix.Project

  def project do
    [apps_path: "apps", start_permanent: Mix.env() == :prod, deps: deps(), releases: releases()]
  end

  defp deps do
    []
  end

  defp releases do
    [
      bruno_codes: [
        version: "0.1.0",
        applications: [bruno_codes_web: :permanent]
      ]
    ]
  end
end
