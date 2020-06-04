defmodule ThanosExTest.Glove.GetPath do
  use ExUnit.Case

  test "get_path return cwd path" do
    {_, path} = File.cwd()
    assert ThanosEx.Glove.GetPath.get_path(1) == path
  end

end
