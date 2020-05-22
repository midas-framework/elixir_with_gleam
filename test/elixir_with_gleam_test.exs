defmodule ElixirWithGleamTest do
  use ExUnit.Case
  doctest ElixirWithGleam

  test "greets the world" do
    assert ElixirWithGleam.hello() == :world
  end
end
