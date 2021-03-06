defmodule ThanosEx.Glove.GetPath do
  @moduledoc """
  Module contains functions for users to choose if they want use current path or other
  and functions to return path in string.
  """
  def user_choice do
    IO.puts("Would You activate Thanos in current directory or in other place?")
    IO.puts("1- Current directory")
    IO.puts("2- Other path")

    {answer, _} = IO.gets("Your choice: ") |> Integer.parse
    answer
  end

  def get_path(1) do
    # get path of current directory
    {_, path} = File.cwd()
    path
  end

  def get_path(2) do
    # get path from user
    IO.gets("Type the path: ")
      |> String.split("\n")
      |> List.first()
  end

end
