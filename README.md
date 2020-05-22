# ElixirWithGleam

A example project with [Gleam](https://gleam.run/) and [Elixir](https://elixir-lang.org/) playing nicely with [Mix](https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html).

To use this repo you need to have both Elixir and Gleam installed.

## Steps to add Gleam to an existing Mix Project.

Install gleam binary

https://gleam.run/getting-started/installing-gleam.html

Update `mix.exs` to compile `.gleam` files.

```elixir
defmodule ElixirWithGleam.MixProject do
  use Mix.Project

  def project do
    [
      # ...
      erlc_paths: ["src", "gen"],
      compilers: [:gleam | Mix.compilers()],
      aliases: ["compile.gleam": "cmd gleam build"],
      # ...
    ]
  end

  # ...
end
```
