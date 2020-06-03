defmodule ThanosEx.Glove.SearchFiles do
  @moduledoc """
  Module contains only one usefull function which return list of all files.
  To use it call search funtion and pass to it a correct filepath
  """
  def search(filepath) do
    _list_all(filepath)
  end

  defp _list_all(filepath) do
    _expand(File.ls(filepath), filepath)
  end

  defp _expand({:ok, files}, path) do
    # filepath from _list_all represents a path to a directory
    # for all paths in that path we call list_path
    files
    |> Enum.flat_map(&_list_all("#{path}/#{&1}"))
  end

  defp _expand({:error, _}, path) do
    # filepath from _list_all represents a path to a file
    # function return path to that file
    [path]
  end
end
