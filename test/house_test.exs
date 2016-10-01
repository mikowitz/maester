defmodule HouseTest do
  use ExUnit.Case

  test "returns all houses" do
    {:ok, houses} = Maester.House.all
    algood = hd(houses)

    assert algood["name"] == "House Algood"
  end

  test "returns house by id" do
    {:ok, tyrell} = Maester.House.by_id(398)

    assert tyrell["words"] == "Growing Strong"
  end
end
