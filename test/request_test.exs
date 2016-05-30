defmodule RequestTest do
  use ExUnit.Case

  test "returns correct data on valid requests" do
    {:ok, response} = Maester.Request.make("books/1")
    authors = response["authors"]

    assert hd(authors) == "George R. R. Martin"
  end

  test "returns correct error on 404" do
    {:error, message} = Maester.Request.make("books/100")

    assert message == "Not found"
  end
end
