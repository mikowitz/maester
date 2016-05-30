defmodule RequestTest do
  use ExUnit.Case

  test "returns correct data on valid requests" do
    {:ok, response} = Maester.Request.make("books/1")
    authors = response["authors"]

    assert hd(authors) == "George R. R. Martin"
  end
end
