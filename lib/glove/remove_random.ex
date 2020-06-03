defmodule ThanosEx.Glove.RemoveRandom do
  @moduledoc """
  Module contains functions to shuffle files, get the half of them and remove.
  """
  def remove_files(list) when is_list(list) do
    # Get files, shuffle and return half of list
    list
      |> Enum.shuffle
      |> Enum.take(div(length(list), 2))
      |> _remove()
  end

  def remove_files(_) do
    # Error handler
    IO.puts("You have to pass list of files to remove them!")
  end

  defp _remove([]) do
    # Information after removing
    IO.puts("Half of Your files in project were removed!")
  end

  defp _remove([head | tail]) do
    # Change the file permissions and remove files
    case File.chmod(head, 777) do
      :ok -> File.rm(head)
      {:error, result} -> IO.puts("ERROR: #{result}")
    end
    _remove(tail)
  end

end
