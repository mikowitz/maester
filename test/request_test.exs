defmodule RequestTest do
  use ExUnit.Case

  test "returns correct data on valid requests" do
    {:ok, response} = Maester.Request.make("books/1")
    authors = response["authors"]

    assert hd(authors) == "George R. R. Martin"
  end

  test "returns correct data on valid requests with filters" do
    {:ok, jon} = Maester.Request.make("characters", %{:name => "Jon Snow"})
    jon_dob =
      jon
      |> List.first
      |> Map.fetch!("born")

    assert jon_dob == "In 283 AC"

    filters = %{:gender => "female", :culture => "westeros"}
    {:ok, female_westerosi} = Maester.Request.make("characters", filters)
    first = List.first(female_westerosi)

    assert first["gender"] == "Female"
  end

  test "returns correct error on 404" do
    {:error, message} = Maester.Request.make("books/100")

    assert message == "Not found"
  end

  test "returns correct error on 400" do
    {:error, message} = Maester.Request.make("books/banana")

    assert message == "Invalid request"
  end
end
