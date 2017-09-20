defmodule PeoplemakerTest do
  use ExUnit.Case
  doctest Peoplemaker

  test "greets the world" do
    assert Peoplemaker.hello() == :world
  end
end
