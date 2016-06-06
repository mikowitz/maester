defmodule Maester.House do
  @moduledoc """
  Gets house information
  """

  alias Maester.Request, as: Request

  @doc """
  Gets all houses with optional filters
  """
  def all(filters \\ %{}) do
    Request.make("houses", filters)
  end

  @doc """
  Gets a house by id
  """
  def by_id(id) do
    Request.make("houses/#{id}")
  end
end
