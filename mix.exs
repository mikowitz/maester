defmodule Maester.Mixfile do
  use Mix.Project

  def project do
    [
      app: :maester,
      version: "1.0.0",
      elixir: "~> 1.3",
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
      {:earmark, "~> 1.0.3", only: :dev},
      {:ex_doc, "~> 0.14", only: :dev},
      {:httpoison, "~> 0.10"},
      {:poison,    "~> 3.0"}
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
