defmodule BookTest do
  use ExUnit.Case

  test "returns all books" do
    {:ok, books} = Maester.Book.all
    storm = Enum.at(books, 2)

    assert storm["name"] == "A Storm of Swords"
  end

  test "returns character by id" do
    {:ok, feast} = Maester.Book.by_id(5)

    assert feast["name"] == "A Feast for Crows"
  end
end
