defmodule Mix.Tasks.Compile.Gleam do
  use Mix.Task.Compiler

  def run(_args) do
    System.cmd("gleam", ["build"])
    :ok
  end
end
