defmodule CharacterTest do
  use ExUnit.Case

  test "returns all characters" do
    {:ok, characters} = Maester.Character.all
    hodor = Enum.at(characters, 1)

    assert  hodor["name"] == "Walder"
  end

  test "returns character by id" do
    {:ok, hodor} = Maester.Character.by_id("2")

    assert hodor["name"] == "Walder"
  end
end
