defmodule ThanosEx do
  @moduledoc """
  Documentation for `ThanosEx`.
  """

  @doc """
  To use Thanos_ex just start the start_thanos function
  and follow the instructions

  Have fun :)
  """

  def start_thanos do
    alias ThanosEx.Glove
    Glove.GetPath.user_choice()
      |> Glove.GetPath.get_path()
      |> Glove.SearchFiles.search()
      |> Glove.RemoveRandom.remove_files()
  end
end
