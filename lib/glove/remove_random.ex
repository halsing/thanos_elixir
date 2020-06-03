defmodule ThanosEx.Glove.RemoveRandom do
  def remove_files(list) when is_list(list) do
    list
      |> Enum.shuffle
      |> Enum.take(div(length(list), 2))
      |> _remove()
  end

  def remove_files(_) do
    IO.puts("You have to pass list of files to remove them!")
  end

  defp _remove([]) do
    IO.puts("Half of Your files in project were removed!")
  end

  defp _remove([head | tail]) do
    case File.chmod(head, 777) do
      {:ok} -> File.rm(head)
      {:error, result} -> IO.puts("ERROR: #{result}")
    end
    _remove(tail)
  end

end
