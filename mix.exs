defmodule Robby.Mixfile do
  use Mix.Project

  def project do
    [apps_path: "apps",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options.
  #
  # Dependencies listed here are available only for this project
  # and cannot be accessed from applications inside the apps folder
  defp deps do
    [
      {:distillery, "~> 1.5", runtime: false},
      {:conform, "~> 2.0"},
      {:erlware_commons, "~> 1.0"},
      {:gen_smtp, "== 0.11.0", override: true},
      {:combine, "~> 0.9", override: true},
    ]
  end
end
