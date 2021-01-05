defmodule Example do
  @moduledoc """
  Documentation for `Example`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Example.hello()
      "world"

  """

  def display_list([h|t]) do
    IO.write "#{h}"
    if t !== [] do
      IO.write " -> "
      display_list t
    else
      IO.puts ""
    end
  end

  def rand(range) do
    Enum.random (range)
  end

  def fact(num) do
    if num !== 1 do
      num * fact num - 1
    else
      num
    end
  end

  def hello do
    "world"
  end
end

x = IO.gets("What num? ") |> String.trim |> Integer.parse |> (&(elem(&1, 0))).()

Example.fact(x) |> IO.puts
Example.display_list [1, 2, 4, 2]
Example.rand(1..11) |> IO.puts