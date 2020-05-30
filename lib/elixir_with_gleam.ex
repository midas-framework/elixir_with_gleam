defmodule ElixirWithGleam do
  @moduledoc """
  Documentation for `ElixirWithGleam`.
  """

  def hello do
    :hello.switch(:hello.greeting())
  end
end
