defmodule Maester.Mixfile do
  use Mix.Project

  def project do
    [
      app: :maester,
      version: "0.0.0",
      elixir: "~> 1.2",
      description: description,
      package: package,
      deps: deps
   ]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.8"},
      {:poison,    "~> 2.1"}
    ]
  end

  defp description do
    """
    An API of Ice and Fire client for Elixir
    """
  end

  defp package do
    [
      maintainers: ["sotojuan"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sotojuan/maester"}
    ]
  end
end
