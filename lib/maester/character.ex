defmodule Maester.Character do
  @moduledoc """
  Gets character information
  """

  alias Maester.Request, as: Request

  @doc """
  Gets all characters with optional filters
  """
  def all(filters \\ %{}) do
    Request.make("characters", filters)
  end

  @doc """
  Gets a character by id
  """
  def by_id(id) do
    Request.make("characters/#{id}")
  end
end
