defmodule ElixirWithGleam.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_with_gleam,
      version: "0.1.0",
      elixir: "~> 1.10",
      erlc_paths: ["src", "gen"],
      compilers: [:gleam | Mix.compilers()],
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:mix_gleam, "~> 0.1.0"},
      {:gleam_stdlib, "~> 0.9.0"}
      # {:gleam_stdlib, path: "./stdlib"}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
