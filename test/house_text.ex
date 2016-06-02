defmodule HouseTest do
  use ExUnit.Case

  test "returns all houses" do
    {:ok, houses} = Maester.House.all
    stark = Enum.at(characters, 361)

    assert stark["words"] == "Winter is Coming"
  end

  test "returns house by id" do
    {:ok, tyrell} = Maester.House.by_id(398)

    assert tyrell["words"] == "Growing Strong"
  end
end
