defmodule ThanosEx do
  @moduledoc """
  Documentation for `ThanosEx`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ThanosEx.hello()
      :world

  """
  def start_thanos do
    alias ThanosEx.Glove
    Glove.GetPath.user_choice()
      |> Glove.GetPath.get_path()
      |> Glove.SearchFiles.search()
  end
end
