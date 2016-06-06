defmodule Maester.House do
  @moduledoc """
  Gets house information
  """

  alias Maester.Request, as: Request

  @doc """
  Gets all houses
  """
  def all do
    Request.make("houses")
  end

  @doc """
  Gets a house by id
  """
  def by_id(id) do
    Request.make("houses/#{id}")
  end
end
