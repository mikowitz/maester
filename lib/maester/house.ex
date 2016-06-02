defmodule Maester.House do
  @moduledoc """
  Gets house information
  """

  alias Maester.Request, as: Request

  @doc """
  Gets all hosues
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
